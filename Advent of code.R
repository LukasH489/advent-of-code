# Advent of code Lukas

# Load packages
library(tidyverse)

# Part 1 ---- 
# Fuel required to launch a given module is based on its mass. 
# Specifically, to find the fuel required for a module, 
# 1 take its mass, divide by three, round down, and subtract 2.

# First import masses 
modules <- as.data.frame(
  read.table("C:/Users/Lukas/OneDrive/Documenten/Master Geneeskunde/Scriptie/Advent of code/1.txt", 
             quote="\"", comment.char="")
) %>%
  rename(mass=V1)

# create new variable to calculate fuel requirements
modules <- mutate(modules, 
                  fuel_req = floor(mass/3) -2
                  )

# total fuel requirement
sum(modules$fuel_req)
