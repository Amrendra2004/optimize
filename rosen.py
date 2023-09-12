import numpy as np
import scipy
from scipy.optimize import minimize
from scipy.optimize import least_square
def rosen(x):
    return sum (100.0*(x[1:]-x[:-1]**2.0)**2.0+(1-x[:-1])**2.0)
input = np.array([1,3])
res = least_squares(rosen , input)
print(res.x)
