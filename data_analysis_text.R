####### Sneak Peek: Data Analysis with R #####################################

# We are downlaoding a data set which has 150 responents to a couple of survey questions base don the 
# usage of Scooters in DC (2018). 

# Downlaod data set from codefordc.org, it is a very small csv-file
# http://data.codefordc.org/dataset/730-dc-scoot-along/resource/694317f0-9045-461c-9883-302f086bb19d

# read in the csv file which contains the data set:
my_data <- read.csv(file = "C:\\Users\\Valentina\\Documents\\Tech Rebalanced\\scoot-along.-responses.csv")

# View the data set we just read in 
View(my_data)

#How many of the respondents have used a scooter? 
plot(my_data$Have.you.used.a.shared.scooter.yet.)

# You can get to specific questions by using the "$" (dollar sign))
plot(my_data$Do.you.think.you.ll.use.a.shared.scooter.)


# The question "why would you use the scooter" is a bit more tricky to quantify 
# Just browsing through the comments, what do you think is the most cited reason?
# It is difficult to get an idea because there are many reasons listed multiple times. 

# We are going to make it easy by isolating each word of the comments and count how many times each word 
# has been used. 

# To be able to do this, we are using a special R-package called "tm"
# To be able to use it, we first have to install it & run it. 

install.packages("tm")
library(tm)

# OK! Now we are good to go to extract those reasons from the free text format. 

# extract the comments from our the column "Wh would you use the scooters"
comments = Corpus(VectorSource(my_data$Why.would.you.use.the.scooters.))

#extract words from the comments
words = DocumentTermMatrix(comments)

#create a table displaying our words & their counts per comment
View(as.matrix(words))

# Count which word is most frequent 
freq <- colSums(as.matrix(words))

#create sort order (descending)
ord <- order(freq,decreasing=TRUE)

#inspect most frequently occurring terms
freq[head(ord)]

#inspect least frequently occurring terms
freq[tail(ord)]   
