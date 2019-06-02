# refresh_indicator_demo

A Refresh Indicator Demo

## Demo

![refresh_indicator_demo](./README.assets/refresh_indicator_demo.gif)

## 重点

1. `RefreshIndicator`中的child需要是个可滚动的Widget，如果不是，可以使用`ListView`包装一下
2. `onRefresh`需要一个`Future<void>`类型的函数