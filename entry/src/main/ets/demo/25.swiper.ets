interface  swiper {
  value:string,
  color:string|Color
}

@Entry
@Component
struct Index {
  @State Swiperlist:swiper[]=[
    {
    value:'1',
    color:'#0096ff'
     },
    {
      value:'2',
      color:Color.Blue
    },{
    value:'3',
    color:Color.Gray
  }
  ]

  build() {

    Column(){

      Swiper(){
        ForEach(this.Swiperlist,(item:swiper,index:number)=>{
          Text(item.value).backgroundColor(item.color).fontSize(30).fontColor(Color.White).width('100%').textAlign(TextAlign.Center)
        })
      }.width('100%').height(200).autoPlay(true).interval(1000).loop(true)
    }.width('100%').height('100%')

  }
}

