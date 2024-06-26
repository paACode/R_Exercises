#IntroductionToRandRStudio_240502
#Link to Document: https://drive.google.com/file/d/1w4fAjL3ByY1lsziR0vuKeYcb6ciHNF6J/view?usp=drive_link

#Exercise 7.1

# temp1_fahrenheit  <- c(51.9, 51.8, 51.9, 53)
# temp1_degCelsius  <- (temp1_fahrenheit-32) * (5/9)
# 
# temp2_fahrenheit  <- c(48, 48.2, 48, 48.7)
# temp2_deg_Celsius <- (temp2_fahrenheit-32) * (5/9)
# 
# diff_temp <- temp1_fahrenheit -temp2_fahrenheit
#-------------------------------------------------------------------------------
#Exercise 7.2
x <- c(4,2,1,3,3,5,7)
third_entry <- x[3]
fst_and_fth_entry <- x[c(1,4)]
length(x)

x+2 #Adds 2 to each element of vector x
sum(x+2) # Adds up all the elements in vecotor (x+2)
x <= 3 # Returns a vector with True or False statements 
x[x <= 3] #outputs a vector with all element values <=3
x[4] <- 8 #Replaces the 4th element with 8
sort(x) # sorts elements by value 
order(x) #Returns the indexes to element so that values are in order

Name = c("Charlie","Anne", "Bert","Denise")
Age = c(68,24,76,27)
Status = c("old","young","retired","single")
df = data.frame(Name,Age,Status)

indexes_alphabetical = order(Name)
df_alphabetical = data.frame(Name[indexes_alphabetical],
                            Age[indexes_alphabetical], 
                            Status[indexes_alphabetical])
df_alphabetical_easy = df[order(Name),]
df
df_alphabetical
df_alphabetical_easy
#-------------------------------------------------------------------------------