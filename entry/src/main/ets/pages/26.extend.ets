
interface  swiper {
  value:string,
  color:string|Color,
  msg:string
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
      }.width('100%').height(200).autoPlay(true).interval(1000).loop(true)
    }.width('100%').height('100%')

  }
}

