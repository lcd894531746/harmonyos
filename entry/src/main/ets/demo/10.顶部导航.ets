
@Entry
@Component
struct Index {
  build() {
    Row(){
      Text("<")
      Text('个人中心')
      Image($r('app.media.app_icon')).width(20)
    }
    .justifyContent(FlexAlign.SpaceBetween)
    .width('100%')
    .padding(10)
    .border({
      width:2,
      color:Color.Green
    })
  }
}