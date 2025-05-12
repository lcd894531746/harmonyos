
interface  swiper {
  value:string,
  color:string|Color,
  msg:string
}
// @styles不能传递参数的全局和局部都是不能的  不同于的@extend  可以穿传递参数
@Styles function  customcss(){
  .width('100%').height('100%')
  .onClick(()=>{
    AlertDialog.show({message:'弹窗'})
  })
}

@Extend(Text)
function swiperItem (bgcolor:ResourceColor,msg:string){
  .fontSize(30).fontColor(Color.White).width('100%').textAlign(TextAlign.Center)
  .backgroundColor(bgcolor)
  .onClick(()=>{
    AlertDialog.show({
      message:msg
    })
  })
}

@Entry
@Component
struct Index {
  @State bagcolor:ResourceColor=Color.Grey||''

  @Styles incss(){
    .backgroundColor(this.bagcolor)
  }

  @State Swiperlist:swiper[]=[
    {
      value:'1',
      color:'#0096ff',
      msg:'第一个'
    },
    {
      value:'2',
      color:Color.Blue,
      msg:'第二个'

    },{
    value:'3',
    color:Color.Gray,
    msg:'第三个'
  }
  ]
  build() {
    Column(){
      Swiper(){
        ForEach(this.Swiperlist,(item:swiper,index:number)=>{
          Text(item.value).swiperItem(item.color,item.msg)
        })
      }.width('100%').height(200).autoPlay(true)
      .interval(1000)
      .loop(true)
    }
    .incss()
    .customcss()
  }
}

