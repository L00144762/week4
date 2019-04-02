#function should only really do one thing
#this makes it easier to fix if something goes wrong as there is only a few lines of code

#calculating price per hour 


price_calculator <- function(client, hourly, pph =40)
{
  #calculate rate charged per hour (hourly * price per hour)
  
  rate <- hourly * pph
  
  if(hourly > 100){
    
  rate <- rate * 0.9}
  
  #adding vat to rate if the client is public or private
  
  if (client == "public") {
    rate <- paste("public client so rate + VAT = ", rate * 1.06)
    
    
  } else { 
    if (client == "private") {
      rate <- paste("private client so rate + VAT =", rate * 1.12)
      
    }
    
  }
  
  return(rate)
  

}

price_calculator(client = "public", hourly = 50)
price_calculator(client = "private", hourly  = 50)

#another way of adding vat based on sector

alt_price_calculator <- function(hourly, pph =40, public = TRUE)
{
  #calculate rate charged per hour (hourly * price per hour)
  
  rate <- hourly * pph
  
  if(hourly > 100){
    
    rate <- rate * 0.9}
  
  #adding vat to rate if the client is public or private
  
  if (public) {
    rate <- paste("public client so rate + VAT = ", rate * 1.06)
    
    
  } else { 
    if (!public) {
      rate <- paste("private client so rate + VAT =", rate * 1.12)
      
    }
    
  }
  
  return(rate)

}
alt_price_calculator(50, public=TRUE)
alt_price_calculator(public = FALSE, 50)
