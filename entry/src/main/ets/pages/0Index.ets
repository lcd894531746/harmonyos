

@Builder function  navItem(){
  Image($r('app.media.feigou')).width('90%')
}

@Styles function intCss(){
  .width('100%')
  .height('70%')
}

@Entry
@Component
struct Index {
  Scroller:Scroller=new Scroller()
  build() {
    Column({space:20}){
      Scroll(this.Scroller){
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
      Button('回到顶部').onClick(()=>{
        console.log('回到顶部')
        this.Scroller.scrollEdge(Edge.Top)
      })
      Button('回到底部').onClick(()=>{
        console.log('回到底部')
        this.Scroller.scrollEdge(Edge.Bottom)
      })
      Button('获取当前位置').onClick(()=>{
        console.log('获取当前位置')
        AlertDialog.show({message:this.Scroller.currentOffset().yOffset.toString()})
      })
    }
  }
}