## 4개의 정규분포

setwd('D:\\R')
source('simulation1.R')

simulation_data = simulation_data()

km = kmeans(simulation_data, centers = 4, iter.max=500 ) # kmeans 알고리즘

# cluster 확인
table(km$cluster)

# clustering을 반영한 시각화 
plot(simulation_data, col=km$cluster)
