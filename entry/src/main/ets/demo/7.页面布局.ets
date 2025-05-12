
@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  // 定义一个变量
  newName:string ="学鸿蒙来黑马"
  build() {
    Column(){
      Text('小说简介')
        .width("100%")
        .fontSize(24)
        .fontWeight(FontWeight.Bolder)
      Row(){
        Text('都市')
          .margin({
            right:'10'
          })
          .padding(10)
          .backgroundColor(Color.Blue)
        Text('都市生活')
          .backgroundColor("red")
          .padding(10)
          .margin({
            right:'20'
          })
        Text('都市情感')
          .padding(10)
          .margin({
            right:'20'
          })
        Text('男频')
          .padding(10)
      }
      .border({
        color:'#0096ff',
        width:"1"
      })
      .width("100%")
    }
  }
}