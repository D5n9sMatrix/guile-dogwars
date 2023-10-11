#!/usr/bin/r

# Function Calls
# Description
# Create or test for objects of mode "call" (or "(", see Details).

# Usage
# call(name, ...)
# is.call(x)
# as.call(x)
# Arguments
# name	
# a non-empty character string naming the function to be called.

# ...	
# arguments to be part of the call.

# x	
# an arbitrary R object.

# Details
# call
# returns an unevaluated function call, that is, an unevaluated expression which consists of the named function applied to the given arguments (name must be a string which gives the name of a function to be called). Note that although the call is unevaluated, the arguments ... are evaluated.

# call is a primitive, so the first argument is taken as name and the remaining arguments as arguments for the constructed call: if the first argument is named the name must partially match name.

# is.call
# is used to determine whether x is a call (i.e., of mode "call" or "("). Note that

# is.call(x) is strictly equivalent to typeof(x) == "language".

# is.language() is also true for calls (but also for symbols and expressions where is.call() is false).

# as.call(x):
# Objects of mode "list" can be coerced to mode "call". The first element of the list becomes the function part of the call, so should be a function or the name of one (as a symbol; a character string will not do).

# If you think of using as.call(<string>), consider using str2lang(*) which is an efficient version of parse(text=*). Note that call() and as.call(), when applicable, are much preferable to these parse() based approaches.

# All three are primitive functions.

# as.call is generic: you can write methods to handle specific classes of objects, see InternalMethods.

# Warning
# call should not be used to attempt to evade restrictions on the use of .Internal and other non-API calls.

# References
# Becker, R. A., Chambers, J. M. and Wilks, A. R. (1988) The New S Language. Wadsworth & Brooks/Cole.

# See Also
# do.call for calling a function by name and argument list; Recall for recursive calling of functions; further is.language, expression, function.

# Producing calls etc from character: str2lang and parse.

# Examples

is.call(call) #-> FALSE: Functions are NOT calls

## set up a function call to round with argument 10.5
cl <- call("round", 10.5)
is.call(cl) # TRUE
cl
identical(quote(round(10.5)), # <- less functional, but the same
          cl) # TRUE
## such a call can also be evaluated.
eval(cl) # [1] 10

class(cl) # "call"
typeof(cl)# "language"
is.call(cl) && is.language(cl) # always TRUE for "call"s

A <- 10.5
call("round", A)        # round(10.5)
call("round", quote(A)) # round(A)
f <- "round"
call(f, quote(A))       # round(A)
## if we want to supply a function we need to use as.call or similar
f <- round
## Not run: call(f, quote(A))  # error: first arg must be character
(g <- as.call(list(f, quote(A))))
eval(g)
## alternatively but less transparently
g <- list(f, quote(A))
mode(g) <- "call"
g
eval(g)
## see also the examples in the help for do.call