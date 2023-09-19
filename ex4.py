import numpy as np

import scipy.optimize as opt 
#Define objective function

def f(x):

    return -10*np.cos(np.pix-2.2)+(x+1.5)*x

#Set initial guess

x0 = [-2]

#Set up args for basinhopping and call function

mininizer_kwargs ={"method":"BFGS"}
optimization_algorithm = opt.basinhopping(f, x0, minimizer_kwargs=  minimizer_kwargs, niter=200) 
print(optimization_algorithm.message[0])

print("1-D function")

#Save results

optimized_x=optinization_algorithm.x 
optimized_fun=-optimization_algorithm.fun

print ("Optimized x:", optimized_x) 
print("Optinized function value:",optimized_fun)
