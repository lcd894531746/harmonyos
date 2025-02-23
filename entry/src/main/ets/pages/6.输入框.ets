
@Entry
@Component
struct Index {
  build() {
    Column({space:10}){
      TextInput({
        placeholder:'请输入文本',
        text:''
      })
        .type(InputType.Normal)
        .placeholderColor(Color.Green)
      TextInput({
        placeholder:'请输入文本',
        text:''
      })
        .type(InputType.Password)
        .placeholderColor(Color.Green)
      Button('登陆')
    }
  }
}