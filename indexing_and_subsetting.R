# Indexing and Sub-setting 
# Learning a few cool tricks with R
# This file might contain mistakes and shortcomings. However it is good enough to 
# learn the basics and be able to play around 

# Set the working Directory 

# Install the library 
install.packages("survival")

# Load the library 
library(survival)

# Get a data frame to explore with 
pbc <- survival::pbc

# Create sample data structures

pbc_vector <- pbc$time[1:10]
color_vector <- c('red', 'blue', 'green', 'purple')
pbc_matrice <- matrix(data = c(pbc$time[1:5], pbc$status[1:5]), ncol = 2)
pbc_array = array(c(pbc$time[1:4], pbc$status[1:4], pbc$hepato[1:4]), c(1,4,3) )
pbc_dataframe <- data.frame(Time = pbc$time[1:5], Sex = pbc$sex[1:5])
pbc_list <- list(Age = pbc$age[1:7], Treatment = pbc$trt[1:6], Sex = pbc$sex[1:8])
# 1. Position Indexing

# Vectors
pbc_vector

pbc_vector[9]
pbc_vector[c(1,2)]
pbc_vector[c(1,1)]

### Negative Index removes the value and shows the rest
color_vector

color_vector[-2]

# But it doesn't remove the value from the vector, it's still there 
color_vector


# Matrices
pbc_matrice

pbc_matrice[,2]
pbc_matrice[2,]
pbc_matrice[1,2]

### When given one position, R returns the position on the vector that was used
# to create the matrice
color_vector

color_matrice <- matrix(color_vector, nrow = 2, ncol = 2)
color_matrice[2]
color_matrice[[2]]


# Arrays 
pbc_array

pbc_array[1,2,1]
pbc_array[1,,]
pbc_array[1,2,]
pbc_array[1,1,1]


# Data Frames
pbc_dataframe

# Data Frame Output:
pbc_dataframe[2]

# Vector Output: 
pbc_dataframe[[2]]


# List 


### List output
pbc_list[2]

### Vector Output
pbc_list[[2]]




# 2. Logical Indexing

# Vectors
pbc_vector

# 1)
logical_vector <- c(TRUE, FALSE, FALSE, TRUE, FALSE)
pbc_vector[logical_vector]

# 2) Conditional as in any other programming language
pbc_vector[pbc_vector > 1500]
pbc_vector[pbc_vector > 1000 & pbc_vector < 4000]
pbc_vector[pbc_vector < 1000 | pbc_vector > 4000]


# Data Frames
pbc_dataframe

pbc_dataframe[pbc_dataframe$Time < 1000,]
pbc_dataframe[ pbc_dataframe$Sex == 'm',]




# 3. Name Indexing 

# Vectors
dial_code_vector <- c(Holland = 31, Belgium = 32, Germany = 49)

# Returns a named vector 
dial_code_vector['Holland']

# Returns a single value
dial_code_vector[['Belgium']]


# Data Frames

head(pbc['time'])
head(pbc$time)

# List
pbc_list

pbc_list$Treatment




# 4. Combinations

# Logical and Position

head(pbc[pbc$sex == 'f' & pbc$age >= 60, 1:10])

# If needed

# Save the data (Multiple objects):
# save(a, b, file = 'file_name.RData')

# Save the data (Single):
# saveRDS(a , file = file_name.RData)










