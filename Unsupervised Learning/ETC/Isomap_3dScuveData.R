library(vegan) # Isomap
library(dimRed) # 3d S dataset

s_dataset = loadDataSet('3D S Curve', n=1000)
simulation_data = s_dataset@data

# 3D S Curve data euclidean distance
dis = as.matrix(dist(simulation_data, method='euclidean'))

# isomap 
isomap_m = isomap(dis, ndim=2, k=10)

plot(isomap_m$points)
