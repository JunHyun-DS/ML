setwd('D:\\R')
source('simulation8.R')
library(fpc) # dbscan
library(fossil) # rand index

simulation_data = simulation_data # simulation8 data

dbs=dbscan(simulation_data, eps=.4, MinPts = 4) # DBSCAN 알고리즘

# cluster 확인 
table(dbs$cluster)

# rand index: clustering 성능평가 지표 
randIndex = rand.index(test_cluster, dbs$cluster)

# clustering 후 시각화
plot(simulation_data, col=dbs$cluster)

# rand index 결과 값
cat('banana data에서 dbscan의 randIndex는 ', randIndex, '입니다.', sep='')
