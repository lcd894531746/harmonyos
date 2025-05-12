import createTaskList, { taskModel } from '../viewmodel/taskModel'
import taskStatisties from '../components/taskStatisties'
import taskItem from '../components/taskItem';

enum taskStatusType {
  DONE = 'done',
  UNDONE = 'undone',
  FUTURE = 'future',
  DOING = 'doing'
}


// 首页
@Entry
@Component
struct Index {
  @State userName: string = '小王';
  @State taskList: Array<taskModel> = []

  aboutToAppear(): void {
    const taskList = createTaskList.init()
    this.taskList = taskList
  }

  Scroller: Scroller = new Scroller()
  params: Record<string, number | string> = { "test": 1, "name": '王' }
  @Provide('localStorage') storage: LocalStorage = new LocalStorage(this.params)
  @Provide('NavPathStackIndex') pageStack: NavPathStack = new NavPathStack()

  build() {
    Navigation(this.pageStack) {
      RelativeContainer() {
        Scroll(this.Scroller) {
          Column() {
            Text('你好,' + this.userName)
              .fontSize(28)
              .fontWeight(FontWeight.Bolder)
              .margin({ bottom: 15 })
            Text('让每天的工作效率提高')
              .fontSize(14)
              .fontWeight(FontWeight.Bolder)
              .fontColor(Color.Gray)
              .margin({ bottom: 30 })
            //   我的计划
            Column() {
              taskStatisties({
                taskList: this.taskList,
                ClickType: () => {
                  console.log('点击了')
                }
              }).height('100%')

            }.width('100%').height(330).margin({ bottom: 20 })

            //   今日任务
            taskItem({
              taskList: this.taskList.filter((item: taskModel) => item.taskStatus === taskStatusType.DONE),
              ClickItem: (item: taskModel) => {
                console.log('点击了：ClickItem', JSON.stringify(item))
              }
            })
          }
          .padding(10)
          .alignItems(HorizontalAlign.Start)
          .justifyContent(FlexAlign.Start)
          .width('100%')
          .border({ width: 1, color: Color.Green })
        }
        .scrollable(ScrollDirection.Vertical)
        .width('100%')
        .height('100%')
        .scrollBar(BarState.Auto)
        .scrollBarWidth(5)
        .edgeEffect(EdgeEffect.Fade)
        .border({ width: 1, color: Color.Orange })

        Flex({
          justifyContent: FlexAlign.Center,
          alignItems: ItemAlign.Center
        }) {
          Text('+')
            .fontSize(50).fontColor(Color.White)
        }
        .alignRules({
          'bottom': { 'anchor': '__container__', 'align': VerticalAlign.Bottom },
          'right': { 'anchor': '__container__', 'align': HorizontalAlign.End }
        })
        .offset({ x: -20, y: -30 })
        .width(60)
        .height(60)
        .backgroundColor('#4F58C7')
        .borderRadius('50%')
        .onClick(() => {
          try {
            // 查看页面栈
            console.log('查看', JSON.stringify(this.pageStack))
            this.pageStack.pushPath({
              name: 'addTask',
              param: JSON.stringify({ value: '1' })
            })
          } catch (error) {
            console.error('点击事件异常:', error)
          }
        })
      }.width('100%').height('100%').backgroundColor('#EEF0F2')
    }
    .mode(NavigationMode.Stack)
    .hideToolBar(true)
    .onSizeChange((event) => {
      // 监听路由状态变化
      console.log('路由状态变化:', event)
    })
  }
}