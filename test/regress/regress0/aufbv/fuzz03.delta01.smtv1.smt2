(set-option :incremental false)
(set-info :status sat)
(set-logic QF_AUFBV)
(declare-fun a8 () (Array (_ BitVec 14) (_ BitVec 12)))
(declare-fun v1 () (_ BitVec 5))
(check-sat-assuming ( (let ((_let_0 (store a8 (_ bv1 14) (_ bv1 12)))) (let ((_let_1 (store _let_0 ((_ sign_extend 13) (ite (bvugt v1 v1) (_ bv1 1) (_ bv0 1))) (_ bv1 12)))) (let ((_let_2 (store _let_1 ((_ zero_extend 2) (bvnor (_ bv1 12) (_ bv0 12))) (_ bv0 12)))) (let ((_let_3 (ite (= _let_1 (store (store _let_1 (_ bv1 14) (_ bv0 12)) ((_ zero_extend 2) (select _let_0 (_ bv0 14))) (_ bv0 12))) false (bvsle (select _let_2 ((_ sign_extend 13) (ite (= a8 _let_1) (_ bv1 1) (_ bv0 1)))) (_ bv0 12))))) (=> (bvsgt (select (store (store _let_1 (_ bv1 14) (_ bv0 12)) ((_ zero_extend 2) (select _let_0 (_ bv0 14))) (_ bv0 12)) (_ bv0 14)) (_ bv0 12)) (or (=> (bvuge (_ bv0 12) (select _let_0 ((_ zero_extend 2) (select _let_2 ((_ sign_extend 13) (ite (= a8 _let_1) (_ bv1 1) (_ bv0 1))))))) (ite _let_3 (bvsge ((_ sign_extend 11) (_ bv1 1)) (bvor (bvnor (_ bv1 12) (_ bv0 12)) (select _let_0 ((_ sign_extend 13) (ite (= _let_1 _let_2) (_ bv1 1) (_ bv0 1)))))) _let_3)) (= _let_0 (store a8 (_ bv0 14) (_ bv0 12))))))))) ))