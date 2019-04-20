post_employment <- read_csv("~/thesis/code/accelerating-dnns/post_employment.csv")
post_employment


# What unique majors are reprsented? 
unique(post_employment$majors)

# What percentage of respondents have job offers?
sum(post_employment$offer == 1) / nrow(post_employment) * 100

# Which major has the most job offers?
post_employment %>%
  ggplot(aes(x = majors)) +
  geom_histogram(stat = "count") + 
  theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
  geom_text(stat='count', aes(label=..count..), vjust=-.5)


post_employment$double_major <- as.factor(post_employment$double_major)

post_employment %>%
  ggplot(aes(x = double_major)) +
  geom_histogram(stat="count") +
  geom_text(stat='count', aes(label=..count..), vjust=-.5)

# How many double majors are there?
post_employment %>%
  ggplot(aes(x = double_major)) +
  geom_histogram(stat = "count")

# How many double majors have jobs?
post_employment %>%
  filter(double_major == 1) %>%
  ggplot(aes(x = as.factor(offer))) +
  geom_bar(stat = "count")

post_employment %>%
  filter(offer == 1) %>%
  ggplot(aes(x = majors)) + 
  geom_histogram(stat = "count") +
  theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
  geom_text(stat='count', aes(label=..count..), vjust=-.5)



  
  
