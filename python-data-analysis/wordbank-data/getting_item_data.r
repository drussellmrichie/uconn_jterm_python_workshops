setwd("~/uconn_jterm_python_workshops/python-data-analysis")

library(wordbankr)

#install.packages("devtools")
#devtools::install_github("langcog/langcog")
library(langcog)

library(dplyr)
library(ggplot2)
library(directlabels)
theme_set(theme_mikabr())
font <- theme_mikabr()$text$family
#mode <- "local" #don't want this because we are *not* accessing wordbank from a local, Stanford machine!

#all_vocab_admins <- get_administration_data()

#vocab_admins <- get_administration_data() %>%
#  select(data_id, language, form, age, sex, production) %>%
#  filter(form == "WS", !is.na(sex))

#vocab_admins <- get_administration_data(mode = mode) %>%
#  select(data_id, language, form, age, sex, production) %>%
#  filter(form == "WS", !is.na(sex))

all_languages_and_forms_item_data <- get_item_data()
write.csv(all_languages_and_forms_item_data,'all_languages_and_forms_item_data.csv')

num_words <- get_item_data() %>%
  filter(form == "WS", type == "word") %>%
  group_by(language) %>%
  summarise(n = n())

vocab_data <- vocab_admins %>%
  left_join(num_words) %>%
  mutate(production = as.numeric(production) / n) %>%
  group_by(language, sex, age) %>%
  summarise(median = median(production))

# ggplot(filter(vocab_data, language != "Hebrew"),
#        aes(x = age, y = median, colour = sex, label = sex)) +
#   facet_wrap(~language) +
#   geom_line(size = 1) +
#   scale_colour_solarized() +
#   scale_x_continuous(breaks = seq(min(vocab_data$age), max(vocab_data$age), 2),
#                      limits = c(min(vocab_data$age), max(vocab_data$age) + 1),
#                      name = "\nAge (months)") +
#   scale_y_continuous(name = "Median Productive Vocabulary (proportion of total words)\n",
#                      limits = c(0, 1)) +
#   theme(legend.position = "none") +
#   geom_dl(method = list(dl.trans(x = x + 0.2), "last.qp", cex = 1, fontfamily = font))