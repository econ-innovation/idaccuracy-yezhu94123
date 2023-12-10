
# 课题练习1
# 如何将3.141592657 转换成 character
number <- 3.141592657
char_representation <- as.character(number)
print(char_representation)
# 如何将3.141592657 转换成 logical
number <- 3.141592657
logical_representation <- as.logical(number)
print(logical_representation)
# 如何判断"hello world"是否是一个character
string <- "hello world"
is_character <- is.character(string)
print(is_character)
# 如何判断一个NA是否是缺失值
na_value <- NA
is_missing <- is.na(na_value)
print(is_missing)


# 课题练习2
# 创建一个向量 v1
v1 <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

# 取出v1的第2和第3个元素
elements_2_and_3 <- v1[c(2, 3)]
print(elements_2_and_3)

# 取出v1的最后一个元素
last_element <- tail(v1, 1)
print(last_element)

# 取出v1的倒数第二个元素
second_last_element <- tail(v1, 2)[1]
print(second_last_element)

# 取出v1中整除3的元素
divisible_by_3 <- v1[v1 %% 3 == 0]
print(divisible_by_3)

# v1[-1]会返回什么结果,有何启示?
# -1表示移除向量中的第一个元素
result_1 <- v1[-1]
print(result_1)
# 启示：v1[-1]返回一个移除了第一个元素的新向量，原始向量 v1 不受影响。

# v1[5]会返回什么结果,有何启示?
result_2 <- v1[5]
print(result_2)
# 启示：v1[5]返回向量 v1 中的第五个元素，即 5。

# v1[] <- 99 与 v1 <- 99 有何不同?
v1[] <- 99
print(v1)
# 启示：v1[] <- 99 会将向量 v1 中的所有元素替换为99，而 v1 <- 99 只会将整个向量替换为一个包含一个元素99的新向量。




