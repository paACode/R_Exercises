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
# x <- c(4,2,1,3,3,5,7)
# third_entry <- x[3]
# fst_and_fth_entry <- x[c(1,4)]
# length(x)
# 
# x+2 #Adds 2 to each element of vector x
# sum(x+2) # Adds up all the elements in vecotor (x+2)
# x <= 3 # Returns a vector with True or False statements 
# x[x <= 3] #outputs a vector with all element values <=3
# x[4] <- 8 #Replaces the 4th element with 8
# sort(x) # sorts elements by value 
# order(x) #Returns the indexes to element so that values are in order
# 
# Name = c("Charlie","Anne", "Bert","Denise")
# Age = c(68,24,76,27)
# Status = c("old","young","retired","single")
# df = data.frame(Name,Age,Status)
# 
# indexes_alphabetical = order(Name)
# df_alphabetical = data.frame(Name[indexes_alphabetical],
#                             Age[indexes_alphabetical], 
#                             Status[indexes_alphabetical])
# df_alphabetical_easy = df[order(Name),]
# df
# df_alphabetical
# df_alphabetical_easy
#-------------------------------------------------------------------------------
#Definition Standard Deviation and Variance

# weight <- c(60, 72, 57, 90, 95, 72)
# weight_mean <- mean(weight)
# 
# diff_weight <- weight-weight_mean 
# 
# std_deviation = sqrt((sum(diff_weight^2))/(length(weight)-1))
# round(std_deviation,5) == round(sd(weight),5)
# 
# 
# variance = sum(diff_weight^2)/(length(weight)-1)
# round(variance,5) == round(var(weight),5)
#-------------------------------------------------------------------------------
# #Exercise 8.3
# winner    <- c(191, 185, 185, 182, 182, 188, 188, 188, 185, 185, 177,
#             182, 182, 193, 183, 179, 179, 175)
# opponent  <- c(165, 187, 175, 193, 185, 187, 188, 173, 180, 177, 183,
#               185, 180, 180, 182, 178, 178, 173)
# 
# length(winner) == length(opponent)
# 
# winner[6:10]
# winner[c(3,5,10:12)]
# 
# winner
# winner[c(6,7)] <- 189
# winner
# 
# mean(winner)>mean(opponent)
# diff_average = mean(winner)-mean(opponent)
# diff_average
# 
# var(winner) == (sum((winner-mean(winner))^2))/(length(winner)-1)
# sd(winner) == sqrt((sum((winner-mean(winner))^2))/(length(winner)-1))
# 
# y = seq(2016,1948, by=-4)
# 
# x <- c(4, 10, 3, NA, NA, 1, 8)
# mean(x) #We cannot take a mean of Not availabel elemtns
# mean(x, na.rm=TRUE)
# 
# sort(x) #Removes NA elements from vector
# sort(x, na.last = TRUE) 
# sort(x, decreasing = T) #Changes order
# order(x) # Keeps NA Elements (highest index)
# 
# 
# x <- c(4, 2, 8, 9, 7, 5, 2, 1)
# plot(x)
# 
# plot(x,
#      type = "l",
#      col = "blue",
#      lty = 2,
#      main = "main title",
#      xlab = "A few numbers",
#      ylab = "other numbers",
#      xlim = c(0,10),
#      ylim = c(0,10))
# 
# abline(v=3, col="green")
# abline(h=4, col="red", lty=2)
# abline(a=1,b=2)
#-------------------------------------------------------------------------------

#Exercise 9.1 
data <- read.csv("C:/Users/acker/Documents/R_Workspace/R_Exercises/weather.csv")
data[2,3] #2nd row, 3rd column
data[4, ]
data1 <- data[,c("Luzern","Zurich")]
write.csv(data1, file = "C:/Users/acker/Documents/R_Workspace/R_Exercises/weather2.csv")
col_name_3rd <- colnames(data)[3]
col_name_3rd
colnames(data)[2] <- "Geneva"

# order sorts all entries from column zurich
# Returnd the indexes and uses this indexes to also sort the other entries
# accordingly to zurich order
data3 <- data[order(data[, "Zurich"]), ]



