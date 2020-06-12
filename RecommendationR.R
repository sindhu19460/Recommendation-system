library(recommenderlab)
library(caTools)
book <- read.csv(file.choose()) #####book
str(book)
hist(book$Book.Rating)

book_rating_matrix <- as(book,'realRatingMatrix')

#######################popular#################
book_reccom_popular <- Recommender(book_rating_matrix, method="POPULAR")
recomm_book1 <- predict(book_reccom_popular,book_rating_matrix[2:3], n=5)
as(recomm_book1,"list")

####################UBCF#################################
book_recomm_ubcf <- Recommender(book_rating_matrix, method="UBCF")
recomm_book2 <- predict(book_recomm_ubcf,book_rating_matrix[2:3],n=5)
as(recomm_book2,"list")
