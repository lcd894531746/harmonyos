

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
          ForEach(Array.from({length:5}),()=>{
           navItem()
          })
        }
      }.intCss()
      .scrollable(ScrollDirection.Vertical)//设置滚动方向
      .scrollBar(BarState.Auto)// 设置是否显示滚动条
      .scrollBarColor(Color.Brown)
      .scrollBarWidth(10)
      .edgeEffect(EdgeEffect.Spring)//滚动到边缘的时候滚动条的效果

  }
}