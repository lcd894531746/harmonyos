
let name:string ="字符串"
@Entry
@Component
struct Index {
  build() {
    Column(){
      Text('点击事件')
      Button('点我触发').onClick(()=>{
        console.log('触发点击事件')
        AlertDialog.show({
          message:'我是一个弹窗'
        })
      })
    }
  }
}