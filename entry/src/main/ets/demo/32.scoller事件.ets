

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
  @State showToTop:boolean=false
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
      // 滚动事件回调，Scroll滚动时触发。 返回当前帧滚动的偏移量和当前滚动状态。
      // .onDidScroll((x,y,state)=>{
      //   console.log('x,y,state',x,y,state);
      // })
      // 触底或者触顶  触发
      // .onScrollEdge((side:Edge)=>{
      //   console.log('滚动:',side.toString());
      // })
      // 开始滚动
      .onScrollStart(()=>{
        console.log('滚动开始:');
      })
      // 每次滚动停止触发
      .onScrollStop(()=>{
        console.log('滚动停止');
        const  currentTop=this.Scroller.currentOffset().yOffset
        this.showToTop=  currentTop>300? true:false
      })
      //滚动开始前被触发
      // .onWillScroll((x:number,y:number)=>{
      //   console.log('onWillScroll','x:',x,'y:',y)
      // })
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

      if (this.showToTop){
        Button('showToTop').position({bottom:100,right:50})
      }
    }
  }
}