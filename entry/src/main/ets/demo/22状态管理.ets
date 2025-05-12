
let name:string ="全局变量"
@Entry
@Component
struct Index {
  message1:String='局部变量'
  @State message2:string='状态变量'
  @State conunt:number=0

  build() {
    Column({space:20}){
      Text(`全局变量：${name}`)
      Text(`局部变量：${this.message1}`)
      Text(`状态变量：${this.message2+this.conunt}`)
      Button('点我触发').onClick(()=>{
        this.conunt=this.conunt++
        console.log('触发点击事件')
        name='修改全局变量'
        this.message1='修改局部变量'
        this.message2='修改状态变量'
        console.log(`全局变量：${name}`);
        console.log(`局部变量：${this.message1}`);
        console.log(`状态变量：${this.message2}`);
      })
    }.width('100%').alignItems(HorizontalAlign.Start)
  }
}