##data_cleaning
here::i_am("code/01_data_clean.R")
data_url <- "https://storage.googleapis.com/kagglesdsdata/datasets/552987/1007241/cardiovascular.txt?X-Goog-Algorithm=GOOG4-RSA-SHA256&X-Goog-Credential=gcp-kaggle-com%40kaggle-161607.iam.gserviceaccount.com%2F20221206%2Fauto%2Fstorage%2Fgoog4_request&X-Goog-Date=20221206T191159Z&X-Goog-Expires=259200&X-Goog-SignedHeaders=host&X-Goog-Signature=03960f98376f19a91e25ff2176b6aaa99d5b6c1c2ca14b56749a5adae48b811bb86dccb12f999ec7ff955eacaec47cd50834f7b43e2efc4a007dd15b09307eee72b120f8b55e5dee8f3249e0f808bf3967cb88bc489ee19e78a44b442b4430c594565d899e98be73be468a17ad1566e56a98666a6b4b7a470cec83c1642459977c965103b9c24b1bd947f135f9f4873e885ed4af809c0c1f6602e476c58c5e5e270a20d6dea8b69fd90ef99bfc580d4e9310bee33fd56b0878bafa64f5e3f21a16cda6c3016e0c97ed288a546d587317fa07b4d5931061b04b39008de39c521eca61c8e3d6b3ec3c4110891bdc140030cfed5b926f10bb28b4e79dfcca844c2b"

#! TO DO: 
#!   save random_numbers1 in output1 directory
saveRDS(
  data,
  file = here::here("clean_data/cleaned.rds")
)
