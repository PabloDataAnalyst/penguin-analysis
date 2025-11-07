# Penguin Species Analysis 🐧

**Created:** 2025  
**Last updated:** 04/11/2025

## 🎯 Goal

Understand how **penguin size** and **physical traits** differ across **species** and **islands** to identify which **environments favor larger or smaller penguins**. This analysis could help **biologists or environmental researchers** study how habitat and adaptation influence penguin morphology.

---

## ⚙️ Process  

1. **Data Loading & Preparation** (`palmerpenguins` dataset)  
   - Loaded the dataset using **tidyverse** and **palmerpenguins** libraries.  
   - Inspected data structure with `View(penguins)`.  
   - Removed rows with **missing values** using `drop_na()`.  

2. **Data Aggregation**  
   - Grouped data separately by **species** and **island**.  
   - Calculated the **average bill length** and **average body mass** for each group using `summarise()`.  
   - Created two summary tables: `data_per_specie` and `data_per_island`.  

3. **Visualization**  
   - Built four bar charts with **ggplot2**:  
     - Bill length by island  
     - Body mass by island  
     - Bill length by species  
     - Body mass by species  
   - Customized all charts with a **dark theme**, adjusting font size, colors, and layout for better contrast.  
   - Combined the four plots into a **single dashboard layout** using **patchwork**.  

---

## 🧰 Tools & Libraries

- **R**  
- **tidyverse** → data manipulation & visualization  
- **dplyr** → data aggregation and summarization (`group_by`, `summarise`)  
- **ggplot2** → creation of comparative bar charts  
- **patchwork** → combining multiple plots into a single dashboard  

**Dataset:** [palmerpenguins: Palmer Archipelago (Antarctica) penguin data](https://allisonhorst.github.io/palmerpenguins/)
*This dataset is from Horst AM, Hill AP and Gorman KB (2020), included in the R package version 0.1.0.*

---

## 📊 Results

The analysis shows clear differences in **size patterns** among penguin species and islands, likely driven by **habitat** and **evolutionary adaptation**.

### 🔍 Insights

- **Gentoo penguins** tend to be the **largest**, with **longer bills**, suggesting adaptation to **deeper foraging habitats**.  
- Some **islands consistently have larger or smaller penguins** within the same species, indicating differences in **food resources** or **environmental conditions**.  
- **Body size** and **bill length** are likely related to the **type of prey** available on each island, useful for **ecological studies**.  
- **Morphological differences** between species and islands suggest **evolutionary adaptation** to local conditions (**climate**, **predators**, **food availability**).  
- These patterns can serve as a **reference for conservation**, especially on islands where **limited resources** may impact the **survival of larger species**.  

---

## 🚀 Next Steps  

- Add **sex-based comparisons** to explore morphological differences between male and female penguins.  
- Incorporate **environmental data (temperature, food availability)** to link habitat with physical traits.  
- Create an **interactive dashboard (Shiny or Power BI)** for dynamic filtering by species and island.  
- Include **trend analysis over time** if longitudinal data becomes available.  
- Compare **Palmer Penguins** with other penguin datasets to identify global adaptation patterns.

---

## 🖼️ Preview  
![Penguin Dashboard](penguin_dashboard.png)

---

**Author:** [Pablo](https://github.com/PabloDataAnalyst) 
© 2025 Pablo. Shared publicly for portfolio purposes.