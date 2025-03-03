
import itemListInfo from './itemListInfo'

@Component
struct centerContent {
  build() {
      List(){
          ForEach(Array.from({length:50}),()=>{
            ListItem(){
              Row(){
                Text('center')
              }.width('100%').padding(10).backgroundColor(Color.Pink).borderRadius(10)
            }.padding(10)
          })
      }.width('100%').layoutWeight(1).backgroundColor(Color.Gray)
        .lanes(1)//  多少列  间距多少
    .listDirection(Axis.Vertical) //主轴方向  水平、垂直
    // .alignListItem(ListItemAlign.Start) //交叉轴对其方式
    .scrollBar(BarState.Auto) //滚动条显示 样式
  }
}


export  default centerContent