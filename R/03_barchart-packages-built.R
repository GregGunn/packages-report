## remember to restart R here!
library(tidyverse)
## make a barchart from the frequency table in data/add-on-packages-freqtable.csv

Freq_Data = readr::read_csv(here::here("data", "add-on-packages-freqtable.csv"))

Letter_Data = readr::read_csv(here::here("./data/packages-by-letter.csv"))
## read that csv into a data frame
## hint: readr::read_csv() or read.csv()
## idea: try using here::here() to create the file path

## if you use ggplot2, code like this will work:
Freq_Plot = ggplot(Freq_Data, aes(x = Built, y = n)) +
  geom_col()

LEtter_Plot = ggplot(Letter_Data)+
  geom_col(aes(x = First_Letter, y = n))

## write this barchart to figs/built-barchart.png
## if you use ggplot2, ggsave() will help
## idea: try using here::here() to create the file path

ggsave(Freq_Plot, here::here("figs", "built-barchart.png"))
ggsave(plot = LEtter_Plot, filename = here::here("figs/barchat-packages-by-letter.png"))


## YES overwrite the file that is there now
## that's old output from me (Jenny)

