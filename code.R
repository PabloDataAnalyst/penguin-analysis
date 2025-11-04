# Project by Pablo - shared publicly for portfolio purposes (2025)
## Charge libraries
library(tidyverse)
library(palmerpenguins)
library(dplyr)
library(patchwork)

## Charge dataset
View(penguins)

## Clean and manipulate data
data_per_specie = penguins |> 
  drop_na() |> 
  group_by(species) |> 
  summarise(average_bill_length = mean(bill_length_mm), average_body_mass_g = mean(body_mass_g))

data_per_island = penguins |> 
  drop_na() |> 
  group_by(island) |> 
  summarise(average_bill_length = mean(bill_length_mm), average_body_mass_g = mean(body_mass_g))

## Create a data visualization
plot1 = data_per_island |> 
  ggplot() + 
  geom_col(aes(average_bill_length, y = reorder(island, average_bill_length), fill = island)) + 
  scale_fill_manual(values = c("#5DA5DA", "#FAA43A", "#60BD68"))+
  labs(fill = "Island", title = "Bill Length by Island", x = "Bill Length", y = "Island") +
  theme_minimal(base_size = 14) +
  theme(plot.title = element_text(hjust = 0.5, size = 25, face = 'bold', color = 'white'),
axis.text.x = element_text(size = 15, angle = 45, hjust = 1, color = 'white'), 
axis.text.y = element_text(size = 20, hjust = 0.5, face = 'bold', color = 'white'),
axis.title.x = element_text(size = 20, face = 'bold', color = 'white'),
axis.title.y = element_text(size = 20, face = 'bold', color = 'white'),
plot.background = element_rect(fill = "#2B2B2B", color = NA ),
panel.background = element_rect(fill = '#2B2B2B', color = NA),
panel.grid       = element_line(color = "#444444"),
legend.position = "none")

plot2 = data_per_island |> 
  ggplot() + 
  geom_col(aes(average_body_mass_g, y = reorder(island, average_body_mass_g), fill = island)) +
  scale_fill_manual(values = c("#5DA5DA", "#FAA43A", "#60BD68"))+
  labs(fill = "Island", title = "Body Mass by Island", x = "Body Mass", y = "Island") +
  theme_minimal(base_size = 14) +
  theme(plot.title = element_text(hjust = 0.5, size = 25, face = 'bold', color = 'white'),
axis.text.x = element_text(size = 15, angle = 45, hjust = 1, color = 'white'), 
axis.text.y = element_text(size = 20, hjust = 0.5, face = 'bold', color = 'white'),
axis.title.x = element_text(size = 20, face = 'bold', color = 'white'),
axis.title.y = element_text(size = 20, face = 'bold', color = 'white'),
plot.background = element_rect(fill = "#2B2B2B", color = NA ),
panel.background = element_rect(fill = '#2B2B2B', color = NA),
panel.grid       = element_line(color = "#444444"),
legend.position = "none")

plot3 = data_per_specie |> 
  ggplot() + 
  geom_col(aes(average_bill_length, y = reorder(species, average_bill_length), fill = species)) +
  scale_fill_manual(values = c("#5DA5DA", "#FAA43A", "#60BD68"))+
  labs(fill = "Species", title = "Bill Length by Species", x = "Bill Length", y = "Species") +
  theme_minimal(base_size = 14) +
  theme(plot.title = element_text(hjust = 0.5, size = 25, face = 'bold', color = 'white'),
axis.text.x = element_text(size = 15, angle = 45, hjust = 1, color = 'white'), 
axis.text.y = element_text(size = 20, hjust = 0.5, face = 'bold', color = 'white'),
axis.title.x = element_text(size = 20, face = 'bold', color = 'white'),
axis.title.y = element_text(size = 20, face = 'bold', color = 'white'),
plot.background = element_rect(fill = "#2B2B2B", color = NA ),
panel.background = element_rect(fill = '#2B2B2B', color = NA),
panel.grid       = element_line(color = "#444444"),
legend.position = "none")

plot4 = data_per_specie |> 
  ggplot() + 
  geom_col(aes(average_body_mass_g, y = reorder(species, average_body_mass_g), fill = species)) +
  scale_fill_manual(values = c("#5DA5DA", "#FAA43A", "#60BD68"))+
  labs(fill = "Species", title = "Body Mass by Species", x = "Body Mass", y = "Species") +
  theme_minimal(base_size = 14) +
  theme(plot.title = element_text(hjust = 0.5, size = 25, face = 'bold', color = 'white'),
axis.text.x = element_text(size = 15, angle = 45, hjust = 1, color = 'white'), 
axis.text.y = element_text(size = 20, hjust = 0.5, face = 'bold', color = 'white'),
axis.title.x = element_text(size = 20, face = 'bold', color = 'white'),
axis.title.y = element_text(size = 20, face = 'bold', color = 'white'),
plot.background = element_rect(fill = "#2B2B2B", color = NA ),
panel.background = element_rect(fill = '#2B2B2B', color = NA),
panel.grid       = element_line(color = "#444444"),
legend.position = "none")

penguin_dashboard = (plot1 + plot2) / (plot3 + plot4)
penguin_dashboard & theme(plot.background = element_rect(fill = "#2B2B2B", color = NA),
panel.border = element_blank())
