#demo

running="Y"

getInput <- function(prompt) {
  cat(prompt)
  readLines("stdin", n = 1)
}

code<-function(){
  
  decision<-getInput("Would you like to import data? If no, data must be manually inputted. [Y/N]: ")
  
  
  
  if(toupper(decision)=='Y'){
    myData<- read.csv(
      getInput("Copy and paste the file location here: ")
    )
    
    col<-as.integer(getInput("What column would you like to extract one-variable statistics from?: "))
    
    cleanedData<-as.numeric(unlist(myData[[col]]))
    
    df<-cleanedData
    print("Average :")
    print(mean(df,na.rm=TRUE))
    
    print("Median :")
    print(median(df,na.rm=TRUE))
    
    print("Standard Deviation :")
    print(sd(df,na.rm=TRUE))
    
    print("Quantiles :")
    quantile(df,na.rm=TRUE)
    
    
  }else
  {
    size<-as.numeric(
      getInput("How many numbers would you like to calculate one-way statistics for?: ")
    )
    
    
    
    if (!is.na(size) && size > 0 && size %% 1 == 0) {
      array <- numeric(size)
      
      for (i in seq_len(size)) {
        value <- as.numeric(
          getInput(paste("Number", i, ": "))
        )
        
        array[i] <- value
      }
      
    } else {
      stop("Please enter a valid positive integer.")
    }
    
    array<-c(1:size)
    
    
    #basic statistics
    print("Average :")
    print(mean(array))
    
    print("Median :")
    print(median(array))
    
    print("Standard Deviation :")
    print(sd(array))
    
    print("Quantiles :")
    quantile(array)
  }
}


while(toupper(running)=='Y'){
  code()
  running<-getInput("Would you like to continue running this program? [Y/N]: ")
  
  if (toupper(running)=='N'){
    print("Thanks for using my program!")
  }
}

