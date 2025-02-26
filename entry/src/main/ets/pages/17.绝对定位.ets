
@Entry
@Component
struct Index {
  build() {
    Row(){
      Image($r('app.media.app_icon')).width(300)
      Text('绝对定位1').position({x:90,y:80}).fontColor('red').fontSize(30).fontWeight(FontWeight.Bolder).backgroundColor(Color.Gray).padding(20).zIndex(1)
      Text('绝对定位2').position({x:40,y:40}).fontColor('red').fontSize(30).fontWeight(FontWeight.Bolder).backgroundColor(Color.Gray).padding(20)
    }
  }
}