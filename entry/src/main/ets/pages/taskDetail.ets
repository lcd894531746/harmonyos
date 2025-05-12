@Entry
@Component
struct taskDetail {


  aboutToAppear(): void {
    // 获取传递的参数

  }
  build() {
    NavDestination() {
      Column() {
        Text('任务详情')
      }
    }
  }
}