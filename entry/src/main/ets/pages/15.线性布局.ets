@Entry
@Component
struct Index {
  build() {
    Column() {
      // 顶部
      Row() {
        Text('❌')
        Text('帮助')
      }.width('100%').justifyContent(FlexAlign.SpaceBetween)

      Row() {
        Image($r('app.media.jd')).width('100%')
      }.height(200)

      Column({ space: 20 }) {
        TextInput({
          placeholder: '国家/地址',
        })
        TextInput({
          placeholder: '请输入手机号码',
        }).type(InputType.Password)
      }

      Row() {
        Checkbox({
          name: 'Radio1',
          group: 'radioGroup'
        }).select(false)
          .onChange((e: boolean) => {
            console.log('选中了', e)
          })
        Text('我已经阅读同意我已经阅读同意我已经阅读同意我已经阅读同意')
      }.width('90%').margin({ top: 20 }).alignItems(VerticalAlign.Top)

      Button('登录').width('100%').margin({ top: 30 }).backgroundColor('red')

      Row() {
        Text('新用户注册')
        Text('账号密码登录').margin({ left: 20, right: 20 })
        Text('无法登录')
      }.justifyContent(FlexAlign.Center).width('100%').margin({ top: 15 })

      Text('其他登录').width('100%').textAlign(TextAlign.Center).margin({ top: 80, bottom: 20 })

      Row() {
        Image($r('app.media.app_icon')).width(50).borderRadius(25)
        Image($r('app.media.app_icon')).width(50).borderRadius(25)
        Image($r('app.media.app_icon')).width(50).borderRadius(25)
        Image($r('app.media.app_icon')).width(50).borderRadius(25)
      }.width('100%').justifyContent(FlexAlign.SpaceAround)

    }
    .width('100%')
    .height("100%")
    .backgroundColor(Color.White)
    .padding(20)
    .alignItems(HorizontalAlign.Start)
  }
}