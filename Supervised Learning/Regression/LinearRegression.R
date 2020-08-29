## Linear Regression with Iris
# y = Sepal.Length x = 그 외 변수 
lm_m = lm(Sepal.Length~., data=iris)

# 선형회귀 모델 요약 통계량
summary(lm_m)

# 선형회귀 분석의 4가지 가정 test
plot(lm_m)

