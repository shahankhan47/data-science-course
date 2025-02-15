import numpy as np
new_input = np.arange(1,101,1).reshape(-1,1)
yhat = lm.predict(new_input)        # Will be an array containing negative values as for our example.