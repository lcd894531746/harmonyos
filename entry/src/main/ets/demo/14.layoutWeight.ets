
@Entry
@Component
struct Index {
  build() {
    Row(){
      Text('item1').layoutWeight(1).backgroundColor(Color.Brown).height(50)
      Text('item1').layoutWeight(1).backgroundColor(Color.Grey).height(50)
      Text('item1').width(100).backgroundColor(Color.Green).height(50)
    }.width("100%")
    .height(100)
  }
}