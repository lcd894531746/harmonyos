
@Entry
@Component
struct Index {
  build() {
    Column({space:15}){
      TextInput({placeholder:'请输入用户名'}).width(100)
      TextInput({placeholder:'请输入密码'}).type(InputType.Password)
    }
    .padding({
      left:10,
      right:10
    })
    .justifyContent(FlexAlign.Center)
    .alignItems(HorizontalAlign.Center)
    .width('100%')
    .height('100%')
  }
}