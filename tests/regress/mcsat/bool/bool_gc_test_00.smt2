(set-info :source |fuzzsmt|)
(set-info :smt-lib-version 2.0)
(set-info :category "random")
(set-info :status unknown)
(set-logic QF_UF)
(declare-fun v0 () Bool)
(declare-fun v1 () Bool)
(declare-fun v2 () Bool)
(declare-fun v3 () Bool)
(declare-fun v4 () Bool)
(declare-fun v5 () Bool)
(declare-fun v6 () Bool)
(declare-fun v7 () Bool)
(declare-fun v8 () Bool)
(declare-fun v9 () Bool)
(declare-fun v10 () Bool)
(declare-fun v11 () Bool)
(declare-fun v12 () Bool)
(declare-fun v13 () Bool)
(declare-fun v14 () Bool)
(declare-fun v15 () Bool)
(declare-fun v16 () Bool)
(assert (let ((e17 
(and
 (or v5 v6 (not v16))
 (or (not v11) v0 v11)
 (or (not v14) v1 (not v1))
 (or v0 (not v12) (not v9))
 (or v7 (not v9) (not v7))
 (or (not v12) (not v6) v0)
 (or (not v12) (not v12) (not v9))
 (or v1 (not v9) v14)
 (or (not v2) (not v8) v6)
 (or (not v3) v14 v3)
 (or (not v4) v9 v15)
 (or (not v0) (not v9) v12)
 (or (not v0) v1 v4)
 (or (not v4) (not v1) v8)
 (or v15 v9 (not v3))
 (or v2 v2 (not v8))
 (or v8 (not v2) v3)
 (or (not v14) v3 (not v9))
 (or (not v16) v1 v3)
 (or (not v9) v4 (not v16))
 (or v16 v11 v4)
 (or v2 v9 (not v0))
 (or (not v9) v4 (not v12))
 (or (not v3) (not v15) v9)
 (or v2 (not v8) v5)
 (or v3 (not v11) v10)
 (or (not v14) (not v14) (not v2))
 (or (not v6) v8 (not v10))
 (or (not v6) (not v3) v3)
 (or v2 (not v12) (not v4))
 (or (not v12) v12 v0)
 (or v11 v9 (not v0))
 (or v7 (not v5) v8)
 (or v4 v4 (not v11))
 (or (not v8) v6 v0)
 (or v11 v8 v10)
 (or (not v9) (not v3) (not v14))
 (or (not v12) v8 (not v8))
 (or (not v8) (not v11) v7)
 (or (not v5) (not v6) (not v16))
 (or (not v9) (not v6) v1)
 (or v5 v12 (not v4))
 (or v2 v1 v7)
 (or (not v14) v10 (not v13))
 (or v5 v4 (not v15))
 (or v6 v10 (not v2))
 (or (not v10) v0 (not v9))
 (or (not v3) v11 (not v11))
 (or v5 v3 (not v13))
 (or v2 (not v3) v2)
 (or (not v9) (not v5) v9)
 (or (not v1) (not v0) v14)
 (or v6 v16 v0)
 (or (not v1) v2 (not v0))
 (or v4 v8 v14)
 (or v12 v6 v11)
 (or v10 v1 (not v5))
 (or (not v10) v7 v14)
 (or v13 v14 v1)
 (or v15 v1 v12)
 (or v12 (not v8) (not v16))
 (or v9 v13 v11)
 (or v1 v16 v1)
 (or v4 (not v13) (not v8))
 (or (not v11) v10 v5)
 (or (not v14) (not v12) (not v14))
 (or (not v2) v9 (not v5))
 (or (not v15) v1 v16)
 (or (not v6) v4 v11)
 (or v16 (not v2) v7)
 (or (not v15) v14 v4)
 (or (not v4) (not v0) (not v5))
 (or (not v1) v11 v0)
 (or (not v8) v1 (not v0))
 (or (not v9) (not v12) v0)
 (or (not v8) (not v2) (not v14))
 (or (not v5) (not v0) v1)
 (or v8 v16 v6)
 (or (not v11) v10 (not v9))
 (or (not v11) v15 v13)
 (or v3 v14 (not v16))
 (or (not v3) v0 v10)
 (or v0 v1 v1)
 (or v7 (not v9) v15)
 (or v1 (not v1) (not v1))
)))
e17
))

(check-sat)
