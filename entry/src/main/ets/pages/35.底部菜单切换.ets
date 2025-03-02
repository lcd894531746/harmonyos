@Entry
@Component
struct Index {
  @State activeTab:number=0
  @Builder tabsbar (name:string,selfTab:number,icon:ResourceStr,activeIcon:ResourceStr){
      Column(){
          Image(this.activeTab===selfTab?activeIcon:icon).width(30)
          Text(name)
            .fontColor(this.activeTab===selfTab?'#0096ff':'')
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
      }.tabBar(this.tabsbar('第一个',0,$r('app.media.playCun'),$r('app.media.app_icon')))
      TabContent(){
        Text('第二个')
      }.tabBar(this.tabsbar('第二个',1,$r('app.media.playCun'),$r('app.media.app_icon')))
    }
    .width('100%')
    .height('100%')
    .vertical(false)//垂直还是水平方向
    .scrollable(true)//是否允许手势滑动
    .animationDuration(500)//滑动的时间
    .barMode(BarMode.Fixed)//默认四 Fixed 控制导航栏是不是可以滚动
    .onChange((Index:number)=>{
      console.log('change事件,当前第几个tans:',Index)
      this.activeTab=Index
    })
    .onTabBarClick((index:number)=>{
      console.log('点击第几个tabbar:',index)
    })
  }
}