
@Entry
@Component
struct Index {
  build() {
      Column(){
        Text('阶段性选择').fontSize(24).fontWeight(FontWeight.Bolder)
        Flex(
          {
            wrap:FlexWrap.Wrap
          }
        ){
          Text('item1').padding(5).backgroundColor(Color.Pink).borderRadius(10).margin({right:10,bottom:10})
          Text('item2').padding(5).backgroundColor(Color.Orange).borderRadius(10).margin({right:10})
          Text('item3').padding(5).backgroundColor(Color.Green).borderRadius(10).margin({right:10})
          Text('item4').padding(5).backgroundColor(Color.Gray).borderRadius(10).margin({right:10})
          Text('item4').padding(5).backgroundColor(Color.Gray).borderRadius(10).margin({right:10})
          Text('item4').padding(5).backgroundColor(Color.Gray).borderRadius(10).margin({right:10})
          Text('item4').padding(5).backgroundColor(Color.Gray).borderRadius(10).margin({right:10,bottom:10})
          Text('item4').padding(5).backgroundColor(Color.Gray).borderRadius(10).margin({right:10})
          Text('item4').padding(5).backgroundColor(Color.Gray).borderRadius(10).margin({right:10})
          Text('item4').padding(5).backgroundColor(Color.Gray).borderRadius(10).margin({right:10})
          Text('item4').padding(5).backgroundColor(Color.Gray).borderRadius(10).margin({right:10})
        }.margin({top:30})
      }.width("100%").height('100%').backgroundColor('#fff').alignItems(HorizontalAlign.Start).padding(10)
  }
}