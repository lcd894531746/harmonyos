@Component
struct myCar {

  @BuilderParam tBuilder:()=>void =this.tBuilderParam
  @BuilderParam cBuilder:()=>void =this.cBuilderParam

  @Builder tBuilderParam(){
    Text('默认标题部分')
  }
  @Builder  cBuilderParam(){
    Text('默认内容区域')
  }
  build() {
    Column(){
      Row(){
       this.tBuilder()
      }.height(50)
      .width('100%')
      .border({
        color:{
          top:Color.Gray
        },
        width:{
          bottom:1
        }
      })
      Row(){
        this.cBuilder()
      }.height(100).width('100%')
    }.width('100%').backgroundColor(Color.White).borderRadius(10).padding(5)
  }
}


@Entry
@Component
struct Index {
  @Builder tBuilder(){
    Text('修改:第一个标题')
  }
  @Builder cBuilder(){
    Text('修改:内容区域')
  }
  build() {
      Column({space:30}){
        myCar({
          tBuilder:this.tBuilder,
          cBuilder:this.cBuilder
        })
        myCar()
      }.width('100%').height('100%').backgroundColor(Color.Gray).padding(20)
  }
}