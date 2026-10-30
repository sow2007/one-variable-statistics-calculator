#demo

running="Y"

code<-function(){

decision<-readline("Would you like to import data from Excel, or manually input data? [Y/N]: ")
if(toupper(decision)=='Y'){
  myData<- read.csv(
    readline("Copy and paste the file location here: ")
  )
  
  col<-as.integer(readline("What column would you like to extract one-variable statistics from?: "))
  
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
    readline("How many numbers would you like to calculate one-way statistics for?: ")
  )
  
  
  
  if (!is.na(size)&&size>0){
    for(i in 1:size){
      
      value<-as.numeric(
        readline(
          cat("Number",i,":")))
      array[i]<-value
    }
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
  running<-readline("Would you like to continue running this program? [Y/N]: ")
  
  if (toupper(running)=='N'){
    print("Thanks for using my program!")
  }
}

  