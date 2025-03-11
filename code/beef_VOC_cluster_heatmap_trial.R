


library(tidyverse)
library(janitor)

beef_voc <- read.csv("./data/Beef_VOCs_excel_file1.csv", header = TRUE, row.names = 1) 



#"header = TRUE:" This argument tells R that the first row of the CSV file contains column names (i.e., the headers).
#If set to FALSE, R would treat the first row as data, not as column names.
#"row.names = 1:" This argument specifies that the first column in the CSV file should be used as row names for the data frame.
#Instead of treating the first column as data, its values will serve as identifiers for each row.
#In summary, the code reads a CSV file from the specified path, uses the first row as column headers, 
#and assigns the values in the first column as row names, storing the resulting data frame in the variable melon_voc.


View(beef_voc)

head(beef_voc)

install.packages("pheatmap")
library(pheatmap)

#?pheatmap #to get help of pheatmap library and function

pheatmap(beef_voc,
         cluster_rows = T, 
         cluster_cols = T,
         clustering_distance_rows = 'euclidean',
         clustering_distance_cols = 'euclidean',
         clustering_method = 'ward.D',
         main = 'Cluster Heatmap for Beef Aroma Volatiles', #to show title of the graph
         show_colnames = T, #to show column names as mentioned in the .csv file
         show_rownames = T, #to show row names as mentioned in the .csv file
         fontsize_number = 4, #to adjust font size
         #number_color = 'black', 
         #display_numbers = T,
         #col = brewer.pal(10, 'RdYlGn'),
         border_color = 'black', #to show border color in black
         #legend = F, #to remove legends
         #legend_breaks = c(0, 250, 500, 750, 1000), #which numbers to display on the legend,
         cutree_rows = 3, #to cut row clusters into 3
         cutree_cols = 3, #to cut column clusters into 3
         fontsize_col = 10, #to adjust the font size of column names as mentioned in the .csv file
         fontsize_row = 10, #to adjust the font size of row names as mentioned in the .csv file
         angle_col = 90, #to show column name at 45 degrees angle
         na_col = 'black' #to show cells with missing values as black color
)




