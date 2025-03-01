

@Builder function  navItem(){
  Image($r('app.media.feigou')).width('90%')
}

@Styles function intCss(){
  .width('100%')
  .height('100%')
}

@Entry
@Component
struct Index {

  build() {
      Scroll(){
        Column({space:50}){
          ForEach(Array.from({length:20}),()=>{
           navItem()
          })
        }
      }.intCss().scrollable(ScrollDirection.Horizontal)

  }
}