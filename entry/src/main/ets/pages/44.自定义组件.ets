
// 头部
@Component
struct head {
  build() {
    Row(){
      Text('主页')
      Text('中间')
      Text('右边')
    }.width('100%').height(100).backgroundColor(Color.Gray).justifyContent(FlexAlign.SpaceBetween).padding(20)
  }
}

// 中间的
@Component
struct centerCom {
  build() {
   Column({space:20}){
     ForEach(Array.from({length:5}),(item:number,index:number)=>{
       Text('中间'+index)
         .onClick(()=>{
           AlertDialog.show({message:`第${index}个`})
         })
     })
   }.backgroundColor(Color.Pink).width('100%').height('100%')
  }
}

// 底部
@Component
struct foot {
  build() {
    Row(){
      Text('主页')
      Text('中间')
      Text('右边')
    }.width('100%').height(100).backgroundColor(Color.Gray).justifyContent(FlexAlign.SpaceBetween).padding(20)
  }
}
@Entry
@Component
struct Index {
  build() {
    Column(){
      head()
      centerCom().layoutWeight(1)
      foot()
    }.height('100%').width('100%')
  }
}