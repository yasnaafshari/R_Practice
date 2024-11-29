# installing required packages:
install.packages("survival")
install.packages("memisc")
install.packages("reshape2")
install.packages("lattice")
install.packages("ggplot2")
install.packages("emojifont")
install.packages("gtrendsR")
install.packages("openxlsx")

# Loading the packages:
library("survival")
library("memisc")
library("reshape2")
library("lattice")
library("ggplot2")
library("emojifont")
library("gtrendsR")
library("openxlsx")

# Extract the data set and save to an object
pbc <- survival::pbc

# Take a look at the first 5 rows:
# head(pbc)

# view the data set:
# View(pbc)

# Use names("name of the data set") to get the column names 
# Use '$' to access individual columns:
# pbc$age[12]

# Create a data set of our own:
dt <- pbc[1:10, c('status', 'trt', 'sex')]

# Take a look at your creation:
# dt

# Different Data Types:
# 1. Scalar:
scalar_example <- pbc$age[11]
create_scalar_data <- 2

# 2. Vector:
vector_example <- c("it","can", "be", "any","data type","as long as", "it", "stays", "the", "same", "for", "all")

# 3. Matrix: 2 dimensional data types with the same type e.g. numeric or logical. nrow or ncol can be left empty
matrice_example <- matrix(data = pbc$chol[1:8],nrow = 2, ncol = 4, byrow = FALSE)

# 4. Array: 3 dimensional data structure with the same data type
array_example <- array(data = pbc$edema[1:24], dim = c(2,3,4))

# 5. Data Frame: 2 dimensional data structure with possible various data types
data_frame_example <- data.frame(ID = pbc$id[1:6], Gender = pbc$sex[1:6],Time = pbc$time[1:6])

# 6. List: 3 dimensional data structure with possible various data types
list_example <- list(pbc$status[1:10], pbc$sex[1:10], c(1:10))


# All the data structures after vector can be created with creating multiple vectors on the spot
# They can also be created using random values such as:
random_data_frame <- data.frame(Age = sample(1:40, 10, replace = FALSE),
                                Gender = sample(c("male", "female","non-binary"),size = 10, replace = TRUE),
                                Time = runif(n = 10, min = 10, max = 50))



# Save the data (Multiple objects):
# save(a, b, file = 'file_name.RData')

# Save the data (Single):
# saveRDS(a , file = file_name.RData)













