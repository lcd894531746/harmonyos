
@Entry
@Component
struct Index {
  build() {
    Row({space:10}){
      Text('item').width(50).height(50).backgroundColor(Color.Gray).borderRadius(30).textAlign(TextAlign.Center)
      Text('item').width(50).height(50).backgroundColor(Color.Gray).borderRadius(30).textAlign(TextAlign.Center)
      Text('item').width(50).height(50).backgroundColor(Color.Gray).borderRadius(30).textAlign(TextAlign.Center)
    }
    .border({
      color:Color.Green,
      width:1
    })
    .alignItems(VerticalAlign.Center)
    .justifyContent(FlexAlign.SpaceAround)
    .width('100%')
    .height(500)
  }
}