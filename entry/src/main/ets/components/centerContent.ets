@Component
struct centerContent {
  build() {
    Column(){
      Text('center')
    }.width('100%').layoutWeight(1)
  }
}


export  default centerContent