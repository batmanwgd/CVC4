(set-option :incremental false)
(set-info :status sat)
(set-logic QF_BV)
(declare-fun v2 () (_ BitVec 4))
(declare-fun v1 () (_ BitVec 4))
(check-sat-assuming ( (let ((_let_0 (bvmul v1 v2))) (distinct _let_0 (bvneg _let_0))) ))
