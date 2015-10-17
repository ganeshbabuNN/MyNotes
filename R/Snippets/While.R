WriteOnNoteBook <- function(total.page.count)
{
  count <- 0
  while(count < total.page.count){
    count <- count + 1
    print(paste("writing on page number",count))
  }
  print("Page finished")
}

WriteOnNoteBook(total.page.count = 10)