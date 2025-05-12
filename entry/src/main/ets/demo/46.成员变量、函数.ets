
@Component
struct comp1 {
  // 成员变量  后期可以被传参 修改的
  title:string="标题"
  rightTitle:string='右侧标题'
  getMore=()=>{
    AlertDialog.show({message:'我是成员变量'+this.title})
  }//  箭头函数也是成员变量
  // 成员函数不可以别修改的重写
  build() {
    Column(){
      Row(){
        Text(this.title).onClick(()=>{
          this.getMore()
        })
        Text(this.rightTitle).onClick(()=>{
          AlertDialog.show({message:this.rightTitle})
        })
      }.justifyContent(FlexAlign.SpaceBetween).width('100%').height(50)
      Row(){
        Text('内容区')
      }.width('100%').backgroundColor(Color.Green).layoutWeight(1)
    }.width('100%').backgroundColor(Color.Gray).height(200).padding(10).borderRadius(15)
  }
}
@Entry
@Component
struct Index {
  build() {
    Column({space:30}){
      comp1({
        title:'全部订单',
        rightTitle:'查看更多1',
        getMore(){
          AlertDialog.show({message:'修改成员变量'})
        }
      })
      comp1({
        title:'第二个左边',
        rightTitle:'查看2'
      })
      comp1({
        title:'第三个左边',
        rightTitle:'查看更多3'
      })
    }.height('100%').width('100%')
  }
}