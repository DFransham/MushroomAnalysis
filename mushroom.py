#declare varialbes for use later in program
mushIn = []
mushOut = []
mushFeatures = [7,21,22,27,37,52,63,67,97,104,110]
mushAttributes = ['feature_7','feature_21','feature_22','feature_27','feature_37','feature_52','feature_63','feature_67','feature_97','feature_104','feature_110']
mushEdible = ['false','true']
outputValues = []
iOutputValue = 0

#open file
mushFile = open ('mushroom.txt', 'r')

#read line from file
mushFileLine = mushFile.readline()

#loop through file to collect values - continues while line is not null
while mushFileLine:
    mushInLine = [] #temporary storage for values to add to mushIn later
    
    if len(mushFileLine) > 1:   #only operate on line if it has length
        mushFileLine = mushFileLine.strip()     #strip /n from line
        mushFileLine = mushFileLine.split(',')  #split by comma into individual variables
        for i in mushFeatures:                  #only collect values corresponding to what we want
            mushInLine.append(int(mushFileLine[i]))
        #print(mushInLine)
        mushIn.append(mushInLine)
        mushOut.append(int(mushFileLine[122]))
    mushFileLine = mushFile.readline()
mushFile.close()
#print(mushOut)

#setup the clips engine and rules
import clips
env = clips.Environment()
env.load('mushroom.clp')

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

print(outputValues)
print(mushOut)

#get accuracy score (percentage)
from sklearn.metrics import accuracy_score
PctAccuracy = accuracy_score (mushOut, outputValues)
PctAccuracy = PctAccuracy * 100
print ('Percent: %.2f' % PctAccuracy)

#get accuracy score (cohen-kappa)
from sklearn.metrics import cohen_kappa_score
Kappa = cohen_kappa_score (mushOut, outputValues)
print ('Kappa: %.2f' % Kappa)

