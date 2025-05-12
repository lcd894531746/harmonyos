@Entry
@Component
struct Index {
  @Styles
  pressedStyle(){
    .backgroundColor(Color.Green)
  }

  @Styles selected(){
    .backgroundColor(Color.Blue)
  }

  build() {
    Column() {
      Button().stateStyles({
        focused: {
          .backgroundColor(Color.Red)
        },
        pressed: this.pressedStyle(),
        normal: {
          .backgroundColor(Color.Gray)
        }
        ,
        selected:this.selected()
      })
    }
    .width('100%')
    .height('100%')

  }
}