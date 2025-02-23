
@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  // 定义一个变量
  @State newName:string ="学鸿蒙来黑马学鸿蒙来黑马学鸿蒙来黑马学鸿蒙来黑马学鸿蒙来黑马学鸿蒙来黑马学鸿蒙来黑马学鸿蒙来黑马学鸿蒙来黑马学鸿蒙来黑马学鸿蒙来黑马学鸿蒙来黑马学鸿蒙来黑马"
  build() {
    Column(){
      Text(this.newName)
        .width("100%")
        .fontSize(24)
        .fontWeight(FontWeight.Bolder)
        .textOverflow({
          overflow:TextOverflow.Ellipsis
        })
        .maxLines(2)
    }
  }
}