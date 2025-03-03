@Extend(Button)
function buttonCss(isActive: boolean) {
  .backgroundColor(isActive ? Color.White : '#F7F9FB')
  .fontColor(isActive ? Color.Black : '#888')
  .fontSize(14)
  .border({ color: isActive ? Color.Gray : '#F7F9FB', width: 1 })
}

@Component
struct headInfo {
  @State isActive: boolean = true

  build() {
    Row() {
      Text('全部评论').fontSize(24).fontWeight(FontWeight.Bolder)
      Row({ space: 10 }) {
        Button('最新')
          .buttonCss(this.isActive)
          .onClick(() => this.isActive = true)
        Button('最热')
          .buttonCss(!this.isActive)
          .onClick(() => this.isActive = false)
      }.backgroundColor('#F7F9FB').borderRadius(20)
    }.height(50).width('100%').justifyContent(FlexAlign.SpaceBetween).padding({ left: 20, right: 20 })
  }
}

export default headInfo