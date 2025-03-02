@Entry
@Component
struct Index {
  @Builder tabsbar (name:string,icon:ResourceStr){
      Column({space:20}){
          Image(icon).width(30)
          Text(name)
      }
  }
  build() {
    // barPosition:BarPosition.End 配置tabbar在顶部还是底部
    Tabs({barPosition:BarPosition.End}){
      TabContent(){
        Column(){
          Text('第一个')
          Text('第一个')
          Text('第一个')
          Text('第一个')
          Text('第一个')
        }
      }.tabBar(this.tabsbar('第一个',$r('app.media.playCun')))
      TabContent(){
        Text('第二个')
      }.tabBar(this.tabsbar('第二个',$r('app.media.playCun')))
      // TabContent(){
      //   Text('第三个')
      // }.tabBar(this.tabsbar('第三个',$r('app.media.playCun')))
    }
    .barHeight(100)
    .width('100%')
    .height('100%')
    .vertical(false)//垂直还是水平方向
    .scrollable(true)//是否允许手势滑动
    .animationDuration(500)//滑动的时间
    .barMode(BarMode.Fixed)//默认四 Fixed 控制导航栏是不是可以滚动
    .onChange((Index:number)=>{
      console.log('change事件,当前第几个tans:',Index)
    })
    .onTabBarClick((index:number)=>{
      console.log('点击第几个tabbar:',index)
    })
  }
}