import itemListInfo from './itemListInfo'

@Component
struct centerContent {
  build() {
    List() {
      ForEach(Array.from({ length: 50 }), (item:number,index:number) => {
        ListItem() {
          itemListInfo({
            count:index
          })
        }
      })
    }
    .divider({
      strokeWidth:1,
      color:Color.Gray,
      endMargin:10,
      startMargin:10
    })
    .width('100%')
    .layoutWeight(1)
    .lanes(1) //  多少列  间距多少
    .listDirection(Axis.Vertical) //主轴方向  水平、垂直
    .alignListItem(ListItemAlign.Start) //交叉轴对其方式
    .scrollBar(BarState.Auto) //滚动条显示 样式
  }
}


export default centerContent