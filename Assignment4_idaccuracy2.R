
# 加载所需的包
library(stringr)

# 读取Aminer数据表格
aminer_data <- read.csv("path_to_aminer_data.csv")

# 读取scientist_pub数据表格
scientist_pub_data <- read.csv("path_to_scientist_pub.csv")

# 提取uniqueID
aminer_data$uniqueID <- str_extract(aminer_data$filename, "0_[0-9+]")
scientist_pub_data$uniqueID <- str_extract(scientist_pub_data$filename, "0_[0-9+]")

# 1. 从Aminer的数据表格中筛选出同一个作者ID下面同样被包含在scientist_pub.csv中的论文数据
matching_data <- merge(aminer_data, scientist_pub_data, by = "uniqueID", all.x = TRUE)

# 2. 计算每一个作者ID的精准度和查全率
precision <- sum(!is.na(matching_data$doi.y)) / nrow(aminer_data)
recall <- sum(!is.na(matching_data$doi.y)) / nrow(scientist_pub_data)

# 3. 计算aminer数据库的平均精准度和查全率
average_precision <- mean(!is.na(matching_data$doi.y))
average_recall <- mean(!is.na(matching_data$doi.y))

# 打印结果
print(paste("Precision:", precision))
print(paste("Recall:", recall))
print(paste("Average Precision:", average_precision))
print(paste("Average Recall:", average_recall))
