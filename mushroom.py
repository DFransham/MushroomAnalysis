mushIn = []
mushOut = []

mushFeatures = [7,21,22,27,37,52,63,67,97,104,110]

mushFile = open ('mushroom.txt', 'r')

mushFileLine = mushFile.readline()

while mushFileLine:
    mushInLine = []
    if len(mushFileLine) > 1:
        mushFileLine = mushFileLine.strip()
        mushFileLine = mushFileLine.split(',')
        for i in mushFeatures:
            mushInLine.append(int(mushFileLine[i]))
        #print(mushInLine)
        mushIn.append(mushInLine)
        mushOut.append(int(mushFileLine[121]))
    mushFileLine = mushFile.readline()
mushFile.close()
#print(mushOut)

#setup the clips engine and rules
import clips
env = clips.Environment()
env.load('mushroom.clp')

mushAttributes = ['feature_7','feature_21','feature_22','feature_27','feature_37','feature_52','feature_63','feature_67','feature_97','feature_104','feature_110']
mushEdible = ['false','true']

outputValues = []
iOutputValue = 0

for line in mushIn:
    #assert the values as CLIPS facts
    for i in range(0,10):
        sFact = '(' + mushAttributes[i] + ' ' + str(line[i]) + ')'
        #print(sFact)
        fact=env.assert_string(sFact)
        
    #run the rules
    r = env.run()
    
    #get the output values
    facts = env.facts()
    for f in facts:
        sFactName = f.template.name
        #print(sFactName)
        if sFactName == 'Edible': #output fact
            sValue = f[0]
            #print(sValue)
            iOutputValue = mushEdible.index(sValue)
    
    outputValues.append(iOutputValue)
    env.reset()

#print(outputValues)
#print(mushOut)

from sklearn.metrics import accuracy_score
PctAccuracy = accuracy_score (mushOut, outputValues)
PctAccuracy = PctAccuracy * 100
print ('Percent: %.2f' % PctAccuracy)

from sklearn.metrics import cohen_kappa_score
Kappa = cohen_kappa_score (mushOut, outputValues)
print ('Kappa: %.2f' % Kappa)

