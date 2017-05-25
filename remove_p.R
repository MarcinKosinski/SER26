library(magrittr)
readLines('show/index.html') %>%
   gsub('<p><small></p>', '<small>', ., fixed = TRUE) %>%
   gsub('<p></small></p>', '</small>', ., fixed = TRUE) %>%
   gsub('<p><small>', '<small>', ., fixed = TRUE) %>%
   gsub('<small></p>', '<small>', ., fixed = TRUE) %>%
   writeLines('show/index.html')