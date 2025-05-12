// 第一个组件

@Component
struct NavDestination1 {
  build() {
    NavDestination() {
      Text('第一个组件')

    }

  }
}

@Component
struct NavDestination2 {
  build() {
    NavDestination() {
      Text('第二个组件')
    }.backgroundColor(Color.Gray)
    .mode(NavDestinationMode.DIALOG)
  }
}

@Component
struct NavDestination3 {
  build() {
    NavDestination() {
      Text('第三个组件')
    }
  }
}

@Entry
@Component
struct Index {
  // 祖孙传递
  @Provide('NavPathStack') NavPathStack: NavPathStack = new NavPathStack() //路由栈

  // 自定义
  @Builder
  PageMap(name: string) {
    // 根据不同的参数 需要显示不用的组件的 所以需要接参数
    if (name === 'NavDestination1') {
      NavDestination1()
    } else if (name === 'NavDestination2') {
      NavDestination2()
    } else if (name === 'NavDestination3') {
      NavDestination3()
    }
  }

  @State arr: number[] = [1, 2, 3]
  @State highlightedIndex: number = 0
  TooTmp: NavigationMenuItem[] = [
    {
      'value': "", 'icon': $r('app.media.1'), 'action': () => {
    }
    },
    {
      'value': "", 'icon': $r('app.media.1'), 'action': () => {
    }
    },
    {
      'value': "", 'icon': $r('app.media.1'), 'action': () => {
    }
    },
    {
      'value': "", 'icon': $r('app.media.1'), 'action': () => {
    }
    },
    {
      'value': "", 'icon': $r('app.media.1'), 'action': () => {
    }
    }
  ]
  ToolbarItem: ToolbarItem[] = [
    {
      value: '首页',
      icon: $r('app.media.jd'),
      action: () => {
      },
      activeIcon: $r('app.media.1'),
      status: ToolbarItemStatus.ACTIVE //NORMAL = 0 DISABLED = 1 ACTIVE = 2
    },
    {
      value: '商城',
      icon: $r('app.media.jd'),
      action: () => {
      }
    }, {
    value: '我的',
    icon: $r('app.media.jd'),
    action: () => {
    }
  }
  ]

  build() {


    // Navigation  分为 标题 内容区 底部工具栏三个部分
    // NavDestination 子页面
    Navigation(this.NavPathStack) {
      List({ space: 12 }) {
        ForEach(this.arr, (item: number, index: number) => {
          ListItem() {
            Text("Page" + item)
              .width("100%")
              .height(72)
              .backgroundColor('#FFFFFF')
              .borderRadius(24)
              .fontSize(16)
              .fontWeight(500)
              .textAlign(TextAlign.Start)
              .onClick(() => {
                console.log('当前点击的是第几个', index)
                this.highlightedIndex = index; // 点击时更新高亮索引
                // this.NavPathStack.pushPath(({
                //   name: 'NavDestination' + (index + 1),
                //   param: JSON.stringify({
                //     id: index
                //   }),
                // })) //普通跳转
                this.NavPathStack.pushPathByName(
                  `NavDestination${index + 1}`,
                  '',
                )

                this.NavPathStack.setInterception({
                  willShow: (from: NavDestinationContext | "navBar", to: NavDestinationContext | "navBar",
                    operation: NavigationOperation, animated: boolean) => {
                    console.log("willShow", JSON.stringify(to))
                    if (typeof to === "string") {
                      console.log("target page is navigation home page.");
                      return;
                    }
                    // 将跳转到NavDestination2的路由重定向到NavDestination2
                    let target: NavDestinationContext = to as NavDestinationContext;
                    console.log("target page is navigation home page.", target.pathInfo.name)
                    // if (target.pathInfo.name === 'NavDestination2') {
                    //   target.pathStack.pop();// 移除
                    //   target.pathStack.pushPathByName('NavDestination2', null);
                    // }
                  }
                })

              })
              .fontColor(
                this.highlightedIndex === index
                  ? '#0000FF' // 高亮文本颜色
                  : '#000000' // 默认文本颜色
              )
          }
        }, (item: number) => item.toString())
      }
      .width("90%")
    }
    .title('标题')
    .mode(NavigationMode.Stack) // 设置导航栏模式  单栏Stack 分栏Split 自动Auto (api10 以上超600vp 就会自动转换成分栏)
    // .mode(NavigationMode.Split) // 分栏的时候右侧的NavDestination 为子组件
    //   分栏的时候需要配置右侧的NavDestination
    .navDestination(this.PageMap) //子组件
    .titleMode(NavigationTitleMode.Mini) // 标题模式   Mini(Mini模式)  Full(强调型标题栏)
    .menus(this.TooTmp) //菜单栏位于Navigation组件的右上角 menus支持Array<NavigationMenuItem>(横屏最多3个竖屏最多5个)和CustomBuilder两种参数类型
    .toolbarConfiguration(this.ToolbarItem)
  }
}