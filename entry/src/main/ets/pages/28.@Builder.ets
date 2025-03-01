

// Builder 可以局部 可以  全局   局部需要使用this  同样 局部之下 访问 局部数据需要使用到this
@Builder function navItem(name:string){
  Column(){
    Image($r('app.media.jd')).width(100)
    Text(name)
  }.border({color:Color.Brown,width:1}).borderRadius(5)
}

@Extend(Row)
function inCss(){
  .width('100%')
  .height(100)
  .backgroundColor(Color.Gray)
  .justifyContent(FlexAlign.SpaceAround)
}

@Entry
@Component
struct Index {

  build() {
    Row(){
      navItem('京东')
      navItem('阿里')
      navItem('淘宝')
    }.inCss()
  }
}

