here::i_am("code/02_model.R")
## CHD Patients
data <- readRDS(
  here::here("clean_data/cleaned.rds")
)

mod1 <- glm(
  sbp ~ tobacco + ldl + adiposity+obesity+alcohol+age,
  data = data[data$chd==1,]
)

mod2 <- glm(
  sbp ~ tobacco + ldl + adiposity+obesity+alcohol+age,
  data = data[data$chd==0,]
)

saveRDS(
  mod1,
  file = here::here("model/model_CHD.rds")
)

saveRDS(
  mod2,
  file = here::here("model/model_non_CHD.rds")
)