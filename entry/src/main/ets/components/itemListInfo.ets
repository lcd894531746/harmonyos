@Component
struct itemListInfo {
  @Prop count: number = 0

  build() {
    Row({ space: 10 }) {
      Image($r('app.media.startIcon')).width(30).alignSelf(1).borderRadius(15)
      Column({ space: 5 }) {
        Row({ space: 5 }) {
          Text('黑暗王国')
          Image($r('app.media.viplever')).width(20).alignSelf(1).borderRadius(15).fillColor(Color.Red)
        }

        Text('五旬老太守国门，紧张到腿发软，某节目').fontSize(14)
        Row() {
          Text('3天前').fontSize(10).fontColor(Color.Gray)
          Badge({
            count: this.count,
            position: BadgePosition.RightTop,
            style: {
              fontSize: 14,
              borderWidth: 0,
              badgeColor: 'transparent',
              color:'red'
            }
          }) {
            Column() {
              Image($r('app.media.zan')).width(20).aspectRatio(1)
            }
          }
        }.width('100%').justifyContent(FlexAlign.SpaceBetween)
      }.alignItems(HorizontalAlign.Start).layoutWeight(1)
    }
    .width('100%')
    .padding(10)
    .borderRadius(10)
    .alignItems(VerticalAlign.Top)
  }
}

export default itemListInfo