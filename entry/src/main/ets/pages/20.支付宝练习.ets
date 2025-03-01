
@Entry
@Component
struct Index {
  build() {
    Stack({
      alignContent:Alignment.Bottom
    }){
      Row(){
        Column({
          space:10
        }){
          Image($r('app.media.1')).width(40).borderRadius(4)
          Text('扫一扫').fontSize(14)
        }.height(80).justifyContent(FlexAlign.Center)
        Column({
          space:10
        }){
          Image($r('app.media.1')).width(40).borderRadius(4)
          Text('扫一扫').fontSize(14)
        }.height(80).justifyContent(FlexAlign.Center)
        Column({
          space:10
        }){
          Image($r('app.media.1')).width(40).borderRadius(4)
          Text('扫一扫').fontSize(14)
        }.height(80).justifyContent(FlexAlign.Center)
        Column({
          space:10
        }){
          Image($r('app.media.1')).width(40).borderRadius(4)
          Text('扫一扫').fontSize(14)
        }.height(80).justifyContent(FlexAlign.Center)
      }.width('100%').height('100%').backgroundColor('#0096ff').zIndex(1).alignItems(VerticalAlign.Top).justifyContent(FlexAlign.SpaceAround)

      Scroll(){
        Column(){
          Text('中间区域').margin({bottom:100})
          Text('中间区域').margin({bottom:100})
          Text('中间区域').margin({bottom:100})
          Text('中间区域').margin({bottom:100})
          Text('中间区域').margin({bottom:100})
          Text('中间区域').margin({bottom:100})
          Text('中间区域').margin({bottom:100})
          Text('中间区域').margin({bottom:100})
          Text('中间区域-zuihou ').margin({bottom:100})
          Text('中间区域-zuihou ').margin({bottom:100})
          Text('中间区域-zuihou ').margin({bottom:100})
          Text('中间区域-zuihou ').margin({bottom:100})
        }.width('100%')
      }.width('100%').height('90%').backgroundColor('#fff').zIndex(2).padding(20).borderRadius({topLeft:10,topRight:10})
      Row(){
        Column({
          space:10
        }){
          Image($r('app.media.1')).width(40).borderRadius(4)
          Text('扫一扫').fontSize(14)
        }.height(80).justifyContent(FlexAlign.Center)
        Column({
          space:10
        }){
          Image($r('app.media.1')).width(40).borderRadius(4)
          Text('扫一扫').fontSize(14)
        }.height(80).justifyContent(FlexAlign.Center)
        Column({
          space:10
        }){
          Image($r('app.media.1')).width(40).borderRadius(4)
          Text('扫一扫').fontSize(14)
        }.height(80).justifyContent(FlexAlign.Center)
        Column({
          space:10
        }){
          Image($r('app.media.1')).width(40).borderRadius(4)
          Text('扫一扫').fontSize(14)
        }.height(80).justifyContent(FlexAlign.Center)

      }.width('100%').height('10%').zIndex(3).border({
        width:{top:1,bottom:1},
        color:{top:Color.Gray,bottom:Color.Black}
      }).width('100%').justifyContent(FlexAlign.SpaceAround).backgroundColor(Color.White)
    }
  }
}