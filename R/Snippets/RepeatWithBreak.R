WriteOnNoteBook <- function(total.page.count)
{
  count <- 0
  repeat {
    count <- count + 1
    if(count > total.page.count){
      print("Page finished")
      break
    }
    print(paste("writing on page number",count))
  }
}

WriteOnNoteBook(total.page.count = 10)
