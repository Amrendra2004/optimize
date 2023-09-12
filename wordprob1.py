import pulp as p
LPP = p.LpProblem('PROBLEM', p.LpMaximize)
X1 = p.LpVariable("X1", lowBound=0)
X2 = p.LpVariable("X2", lowBound=0)
X3 = p.LpVariable("X3", lowBound=0)
X4 = p.LpVariable("X4", lowBound=0)

LPP += 20 * X1 + 12 * X2 + 40 * X3 + 25 * X4
LPP += X1 + X2 + X3 + X4 <= 50
LPP += 3 * X1 + 2 * X2 + X3 <=100
LPP += X2 + 2 * X3 + 3 * X4 <=90

print(LPP)
status = LPP.solve()
print(p.LpStatus[status])
print(p.value(X1), p.value(X2), p.value(X3), p.value(X4), p.value(LPP.objective))
