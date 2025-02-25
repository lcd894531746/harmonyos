
@Entry
@Component
struct Index {
  build() {
    Column({space:40}){
      Image($r('app.media.app_icon')).width('100%').borderRadius({topLeft:100,topRight:100})
      Text('今晚吃这个 | 每日艺术分享').fontWeight(700).fontSize(24)
      Text('No.43')
      Row(){
        Row(){
          Image($r('app.media.app_icon')).width(30).margin({right:10}).borderRadius(15)
          Text('插画师分享聚集地')
        }.layoutWeight(1)
        Row(){
          Image($r('app.media.app_icon')).width(15).margin({right:10})
          Text('2300')
        }
      }
    }.width("100%").padding(10).alignItems(HorizontalAlign.Start)
  }
}