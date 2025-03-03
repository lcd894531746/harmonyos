import font from '@ohos.font';


@Component
struct footer {
  // 页面生命周期进入就注册字体
  aboutToAppear(): void {
    font.registerFont({
      familyName: 'iconFont',
      familySrc: '/iconFont/iconfont.ttf'
    })
  }

  @State dz:boolean = false
  @State sc:boolean = false

  build() {
    Row() {
      Row({ space: 20 }) {
        Text('\ue607')
          .fontFamily('iconFont')
          .fontColor(Color.Gray)
        TextInput({ placeholder: '写评论...' }).layoutWeight(1).backgroundColor(Color.Gray)
        Text('\ue8ad')
          .fontSize(20)
          .fontFamily('iconFont')
          .fontColor(this.dz?Color.Green:Color.Gray)
          .fontWeight(FontWeight.Bolder)
          .onClick(()=>{
            this.dz=!this.dz
          })
        Text('\ue8b9').fontSize(20)
          .fontFamily('iconFont')
          .fontColor(this.sc?Color.Yellow:Color.Gray)
          .fontWeight(FontWeight.Bolder)
          .onClick(()=>{
            this.sc=!this.sc
          })

      }
    }.height(40).width('100%').padding({ left: 10, right: 10 })
  }
}


export default footer