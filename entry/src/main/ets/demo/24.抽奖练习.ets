
interface car {
  name:string,
  count:number
}

@Entry
@Component
struct Index {

  @State arr:car[]=[
    {
      name:'电子产品',count:11
    },{
    name:'母婴产品',count:12
  },{
    name:'家用家电',count:13
  },{
    name:'旅游专区',count:14
  },{
    name:'办公用品',count:15
  },{
    name:'生活服务',count:16
  }
  ]

  @State maskopa:number = 0
  @State maskindex:number=-1
  @State sx:number=0
  @State sy:number=0


  @State counrrent:car ={
    name:'',
    count:0
  }
  count:number=0
  build() {
    Stack() {
      Column({ space: 20 }) {
        Grid() {
          ForEach(this.arr, (item: car, index: number) => {
            GridItem() {
              Badge({
                count: item.count,
                position: BadgePosition.RightTop,
                style: {
                  color: '#0096ff',
                  badgeColor: Color.Yellow
                }
              }) {
                Column({ space: 10 }) {
                  Image($r('app.media.1')).width(100)
                  Text(item.name)
                }
              }
            }.backgroundColor(Color.Gray).border({ color: Color.Orange, width: 1 })
          })
        }
        .rowsTemplate('1fr 1fr 1fr')
        .columnsTemplate('1fr 1fr ')
        .padding(5)
        .width('100%')
        .height(300)
        .backgroundColor(Color.Pink)

        Button('立即抽卡').width(200).backgroundColor(Color.Blue)
          .onClick(() => {
            this.count=Math.floor(Math.random()*6)
            console.log('开始抽奖',this.count)
            this.maskopa=1
            this.maskindex=99
            this.sx=1
            this.sy=1
            this.counrrent=this.arr[this.count]
          })
      }.width('100%').height('100%').backgroundColor(Color.Pink)
      Column({space:50}){
        Text(`获得生肖卡:${this.counrrent.name}`).fontColor(Color.White).fontSize(22).fontWeight(FontWeight.Bolder)
        Image($r('app.media.1')).width(300).scale({
          x:this.sx,
          y:this.sy
        })
          .animation({
            duration:200
          })
        Text('开心收下').border({color:Color.White,width:1}).padding({top:10,bottom:10,left:20,right:20}).borderRadius(20).fontColor(Color.White)
          .onClick(()=>{
            this.maskopa=0
            this.maskindex=-1
            this.sx=0
            this.sy=0
          })
      }.animation({
        duration:3000
      }).opacity(this.maskopa).zIndex(this.maskindex).width('100%').height('100%').justifyContent(FlexAlign.Center).alignItems(HorizontalAlign.Center).backgroundColor('#cc000000')
    }
  }
}