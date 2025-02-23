
@Entry
@Component
struct Index {
  build() {
    Column(){
      Image($r('app.media.startIcon')).alt('这是个图片')
        .width('100').height('100')
      Text('zheshiasa')
    }
  }
}