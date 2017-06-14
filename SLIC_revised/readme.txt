revised by fengyunWang 2017/05/23
在images当中加入图片，在results中查看实验结果
可修改函数参数，对应调用格式如下：

调用格式为:
[idxImg, spNum] = SLIC_mex(noFrameImg, spnumber_input, compactness)
其中
参数:
noFrameImg:输入图像
spnumber_input:超像素数目
compactness:紧凑因子即m
输出:
idxImg:图像类别标签
spNum:超像素数目
