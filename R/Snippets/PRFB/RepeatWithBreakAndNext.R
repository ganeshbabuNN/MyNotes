WriteOnNoteBook <- function(total.page.count)
{
  count <- 0
  repeat {
    count <- count + 1
    if(count > total.page.count){
      print("Page finished")
      break
    }
    if(count %% 2 == 0){
      print(paste("Skipping page number",count))  
      next
    }    
    print(paste("writing on page number",count))
  }
}

WriteOnNoteBook(total.page.count = 10)


