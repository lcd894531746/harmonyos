
@Entry
@Component
struct Index {
  build() {
    Row(){
      Image($r('app.media.feigou')).width('100%').borderRadius(20)
      Text('绝对定位1').borderRadius({topLeft:30,bottomRight:30}).position({x:0,y:0}).fontColor('red').fontSize(20).fontWeight(FontWeight.Bolder).backgroundColor(Color.Gray).padding(20).zIndex(1)
      Text('绝对定位2').position({bottom:0,left:0}).fontColor('red').fontSize(30).fontWeight(FontWeight.Bolder).backgroundColor(Color.Gray).padding(20)
    }
  }
}