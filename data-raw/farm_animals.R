## code to prepare `farm_animals` dataset goes here
farm_animals <- data.frame(
  animal = c("cow", "sheep", "pig", "goat", "chicken"),
  sound = c("moo", "baa", "oink", "headbutt", "bkaw")
)

usethis::use_data(farm_animals, overwrite = TRUE)
