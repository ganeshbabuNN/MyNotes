#switch
#it chooses statements based on the value of an expressions.
feelings <- c("sad","afraid")
for (i in feelings)
  print (
    switch (i,
      sad = "Cheer up",
      afraid= "there is nothing to fear",
      good ="hurry"
    )
  )


