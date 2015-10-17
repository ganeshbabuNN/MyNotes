WriteOnNoteBook <- function(total.page.count)
{ 
  for(count in 1:total.page.count){
    print(paste("writing on page number",count))
  } 
  print("Page finished")  
}

WriteOnNoteBook(total.page.count = 10)