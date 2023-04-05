;R1: IF feature_27 = 0 AND feature_52 = 0 AND feature_63 = 0 AND feature_22 = 0 AND feature_21 = 0 THEN false
(defrule mushroomR1
 (feature_27 ?f27)
 (feature_52 ?f52)
 (feature_63 ?f63)
 (feature_22 ?f22)
 (feature_21 ?f21)
 (test (= ?f27 0))
 (test (= ?f52 0))
 (test (= ?f63 0))
 (test (= ?f22 0))
 (test (= ?f21 0))
 =>
 (assert (Edible "false"))
)

;R2: IF feature_27 = 0 AND feature_52 = 0 AND feature_63 = 0 AND feature_22 = 0 AND feature_21 = 1 THEN true
(defrule mushroomR2
 (feature_27 ?f27)
 (feature_52 ?f52)
 (feature_63 ?f63)
 (feature_22 ?f22)
 (feature_21 ?f21)
 (test (= ?f27 0))
 (test (= ?f52 0))
 (test (= ?f63 0))
 (test (= ?f22 0))
 (test (= ?f21 1))
 =>
 (assert (Edible "true"))
)

;R3: IF feature_27 = 0 AND feature_52 = 0 AND feature_63 = 0 and feature_22 = 1 THEN true
(defrule mushroomR3
 (feature_27 ?f27)
 (feature_52 ?f52)
 (feature_63 ?f63)
 (feature_22 ?f22)
 (test (= ?f27 0))
 (test (= ?f52 0))
 (test (= ?f63 0))
 (test (= ?f22 1))
 =>
 (assert (Edible "true"))
)

;R4: IF feature_27 = 0 AND feature_52 = 0 AND feature_63 = 1 THEN true
(defrule mushroomR4
 (feature_27 ?f27)
 (feature_52 ?f52)
 (feature_63 ?f63)
 (test (= ?f27 0))
 (test (= ?f52 0))
 (test (= ?f63 1))
 =>
 (assert (Edible "true"))
)

;R5: IF feature_27 = 0 AND feature_52 = 1 AND feature_97 = 0 THEN false
(defrule mushroomR5
 (feature_27 ?f27)
 (feature_52 ?f52)
 (feature_97 ?f97)
 (test (= ?f27 0))
 (test (= ?f52 1))
 (test (= ?f97 0))
=>
 (assert (Edible "false"))
)

;R6: IF feature_27 = 0 AND feature_52 = 1 AND feature_97 = 1 THEN true
(defrule mushroomR6
 (feature_27 ?f27)
 (feature_52 ?f52)
 (feature_97 ?f97)
 (test (= ?f27 0))
 (test (= ?f52 1))
 (test (= ?f97 1))
=>
 (assert (Edible "true"))
)

;R7: IF feature_27 = 1 AND feature_104 = 0 AND feature_63 = 0 AND feature_7 = 0 AND feature_37 = 0 THEN true
(defrule mushroomR7
 (feature_27 ?f27)
 (feature_104 ?f104)
 (feature_63 ?f63)
 (feature_7 ?f7)
 (feature_37 ?f37)
 (test (= ?f27 1))
 (test (= ?f104 0))
 (test (= ?f63 0))
 (test (= ?f7 0))
 (test (= ?f37 0))
=>
 (assert (Edible "true"))
)

;R8: IF feature_27 = 1 AND feature_104 = 0 AND feature_63 = 0 AND feature_7 = 0 AND feature_37 = 1 AND feature_110 = 0 THEN true
(defrule mushroomR8
 (feature_27 ?f27)
 (feature_104 ?f104)
 (feature_63 ?f63)
 (feature_7 ?f7)
 (feature_37 ?f37)
 (feature_110 ?f110) 
 (test (= ?f27 1))
 (test (= ?f104 0))
 (test (= ?f63 0))
 (test (= ?f7 0))
 (test (= ?f37 1))
 (test (= ?f110 0))
=>
 (assert (Edible "true"))
)

;R9: IF feature_27 = 1 AND feature_104 = 0 AND feature_63 = 0 AND feature_7 = 0 AND feature_37 = 1 AND feature_110 = 1 THEN false
(defrule mushroomR9
 (feature_27 ?f27)
 (feature_104 ?f104)
 (feature_63 ?f63)
 (feature_7 ?f7)
 (feature_37 ?f37)
 (feature_110 ?f110) 
 (test (= ?f27 1))
 (test (= ?f104 0))
 (test (= ?f63 0))
 (test (= ?f7 0))
 (test (= ?f37 1))
 (test (= ?f110 1))
=>
 (assert (Edible "false"))
)

;R10: IF feature_27 = 1 AND feature_104 = 0 AND feature_63 = 0 AND feature_7 = 1 THEN false
(defrule mushroomR10
 (feature_27 ?f27)
 (feature_104 ?f104)
 (feature_63 ?f63)
 (feature_7 ?f7)
 (test (= ?f27 1))
 (test (= ?f104 0))
 (test (= ?f63 0))
 (test (= ?f7 1))
=>
 (assert (Edible "false"))
)

;R11: IF feature_27 = 1 AND feature_104 = 0 AND feature_63 = 1 AND feature_37 = 0 THEN true
(defrule mushroomR11
 (feature_27 ?f27)
 (feature_104 ?f104)
 (feature_63 ?f63)
 (feature_37 ?f37)
 (test (= ?f27 1))
 (test (= ?f104 0))
 (test (= ?f63 1))
 (test (= ?f37 0))
=>
 (assert (Edible "true"))
)

;R12: IF feature_27 = 1 AND feature_104 = 0 AND feature_63 = 1 AND feature_37 = 1 THEN false
(defrule mushroomR12
 (feature_27 ?f27)
 (feature_104 ?f104)
 (feature_63 ?f63)
 (feature_37 ?f37)
 (test (= ?f27 1))
 (test (= ?f104 0))
 (test (= ?f63 1))
 (test (= ?f37 1))
=>
 (assert (Edible "false"))
)

;R13: IF feature_27 = 1 AND feature_104 = 1 THEN false
(defrule mushroomR13
 (feature_27 ?f27)
 (feature_104 ?f104)
 (test (= ?f27 1))
 (test (= ?f104 1))
=>
 (assert (Edible "false"))
)
