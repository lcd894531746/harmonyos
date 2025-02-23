
@Entry
@Component
struct Index {
  build() {
    Column({space:15}){
      Image($r('app.media.app_icon'))
        .width(100)
      TextInput({placeholder:'请输入用户名'})
      TextInput({placeholder:'请输入密码'}).type(InputType.Password)
      Button('登陆')
        .width('100%')
        .onClick((event: ClickEvent) => {
      })
      Row({space:20}){
        Text('前往注册').fontColor(Color.Blue)
        Text('忘记密码')
      }
    }
    .padding({
      left:10,
      right:10
    })
    .width('100%')
    .height('100%')
  }
}