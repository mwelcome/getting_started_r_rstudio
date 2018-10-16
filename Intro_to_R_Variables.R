########################## Introcution to R & RStudio #########################


################################################################################
##################### Getting started  #########################################
################################################################################


########### Codes and Comments #################################################

# This is a comment.
# The # symbol is what creates a comment. 
# It's a good practice to include comments so that it is easier to understand what you are trying to do. 

# You can have a comment on a line all by itself or use it in combincation with code.

########### Calculations ##############################################

#You can do basic calculatins in R -- check the results in the console!

# A subtraction 
3-2

# An addition
2+2

# Combining calculations & commments:
(4+ 7) * 2  #this comment is overlooked and the calculation  will stil run

################################################################################
##################### Variables ################################################

####################### Variable assignment #################################### 
# Variables hold information that you can access, use, and change.
# There are lots of different types of information that you can hold.

###### Storing numbers and calculations in variables 

# the assignment operator "<-" makes it possible for us to assign a value to a variable
my_number <- 2

#print the variable "my_number" and its value will appear in the console:
my_number

# You can also store calculation results inside a variable: 
my_calculation <- 2+2 

#print the variable "my_calucation" and its value will appear in the console
my_calculation

# Next to numbers, you can also store text in a variable 
# When storing text, the text has to be wrapped in quotation marks like this: "my text goes here"
my_name <- "Valentina"

#print my_name to the console 
my_name

# R is case- sensitive, so my_name is not the same as My_name 
# see what happens when you try and print "My_name' 
My_name


################ Manipulating variables ########################################  

### Making a martini###### 
# We are assinging values to our variables, in this case ingredients to make a martini: 

vodka <- 2 
gin <- 2
olive <- 3 
lemon <- 1

# Mix it all together into a martini 
my_martini <- vodka + gin + olive

## Our friend Abby likes her martini with vodka only
abbys_martini <- my_martini - gin

## She also requests a lemon with it 
abbys_martini <- abbys_martini + lemon # you can overwrite your variable 

############# comparing variables 

# Using boolean logic

1 < 2 # 1 is bigger than 2 
1 > 2 # 1 is bigger than 2 

# comparing martinis: do we have the same martini? 

# Do we have the same martini? 
abbys_martini == my_martini # you need to put double equal sign to compare the variables 

#Is Abbys martini smaller than mine? 
abbys_martini < my_martini 

#Is Abbys martini larger than mine?  
abbys_martini > my_martini 

#Is Abbys martini not like my martini? 
abbys_martini != my_martini #my favorite operator


######### Optional: Data Analysis with R ##########################################






