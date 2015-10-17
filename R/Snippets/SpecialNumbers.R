#Infinity
1 / 0 #Positive infinity
-1 / 0 #Negative infinity
Inf + 5 #Operation on Inf
is.finite(1 / 0) #Check if finite
is.infinite(1 / 0) #Check if infinite

#Undefined
Inf / Inf #NaN (Not a Number)
is.nan(Inf/Inf) #Check if NaN

#Missing values
NA + 5 #Operation on NA
is.na(NA) #Check if NA

#NaN is NA , but NA is not NaN
is.na(NaN) #Check if NaN is NA
is.nan(NA) #Check if NA is NaN