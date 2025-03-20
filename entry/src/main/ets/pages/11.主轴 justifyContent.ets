
@Entry
@Component
struct Index {
  build() {
    Column({space:50}){
      Text('item').width(100).height(50).backgroundColor(Color.Gray).borderRadius(30).textAlign(TextAlign.Center)
      Text('item').width(100).height(50).backgroundColor(Color.Gray).borderRadius(30).textAlign(TextAlign.Center)
      Text('item').width(100).height(50).backgroundColor(Color.Gray).borderRadius(30).textAlign(TextAlign.Center)
    }
    .border({
      color:Color.Green,
      width:1
    })
    // 垂直居中
    .justifyContent(FlexAlign.Center)
    .width('100%')
    .height(500)
  }
}