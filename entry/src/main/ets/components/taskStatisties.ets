import createTaskList, { taskModel } from '../viewmodel/taskModel'

let task1: Record<string, Record<string, string | VerticalAlign | HorizontalAlign>> = {
  'bottom': { 'anchor': 'box3', 'align': VerticalAlign.Top },
  'left': { 'anchor': 'box3', 'align': HorizontalAlign.End },
}
let task2: Record<string, Record<string, string | VerticalAlign | HorizontalAlign>> = {
  'top': { 'anchor': '__container__', 'align': VerticalAlign.Top },
  'right': { 'anchor': '__container__', 'align': HorizontalAlign.End },
}
let task3: Record<string, Record<string, string | VerticalAlign | HorizontalAlign>> = {
  'top': { 'anchor': 'task1', 'align': VerticalAlign.Bottom },
  'left': { 'anchor': 'task1', 'align': HorizontalAlign.Start },
}
let task4: Record<string, Record<string, string | VerticalAlign | HorizontalAlign>> = {
  'top': { 'anchor': 'task2', 'align': VerticalAlign.Bottom },
  'left': { 'anchor': 'task2', 'align': HorizontalAlign.Start },
}


enum taskStatusType {
  DONE = 'done',
  UNDONE = 'undone',
  FUTURE = 'future',
  DOING = 'doing'
}

@Extend(Column)
function ColumnStyles(height: number, bg: string, id: string) {
  .backgroundColor(bg)
  .borderRadius(10)
  .padding(10)
  .width('49%')
  .height(height)
  .alignItems(HorizontalAlign.Start)
  .id(id)
}

@Component
struct taskStatisties {
  @Prop taskList: Array<taskModel> = []
  ClickType = () => {
  }
  private DoneNumber: number = 0 //已完成
  private UndoneNumber: number = 0 //未完成
  private FutureNumber: number = 0
  private DoingNumber: number = 0

  // 使用计算器属性

  computedStatusCount(status: string) {
    // 使用 reduce 求和
    return this.taskList.reduce((sum: number, item: taskModel) => {
      if (item.taskStatus === status) {
        return sum + 1;
      }
      return sum;
    }, 0);
  }

  build() {
    Column() {
      Text('我的计划').width('100%').fontSize(24).fontWeight(FontWeight.Bolder).margin({ bottom: 10 })
      RelativeContainer() {
        Column() {
          Image($r('app.media.computed')).width('50%')
          Text('已完成').fontSize(18).fontWeight(FontWeight.Bolder)
            .margin({ top: 10, bottom: 10 })
          Text(this.computedStatusCount(taskStatusType.DONE) + '任务').fontSize(18).fontWeight(FontWeight.Bolder)
        }.onClick(this.ClickType)
        .alignRules(task1)
        .ColumnStyles(160, '#86CAE6', 'task1')

        Column() {
          Image($r('app.media.progress')).width('20%')
          Text('未完成').fontSize(18).fontWeight(FontWeight.Bolder)
            .margin({ top: 10, bottom: 10 })
          Text(this.computedStatusCount(taskStatusType.UNDONE) + '任务').fontSize(18).fontWeight(FontWeight.Bolder)
        }
        .ColumnStyles(120, '#717CE7', 'task2')
        .alignRules(task2)

        Column() {
          Image($r('app.media.todo')).width('20%')
          Text('等待中').fontSize(18).fontWeight(FontWeight.Bolder)
            .margin({ top: 10, bottom: 10 })
          Text(this.computedStatusCount(taskStatusType.DOING) + '任务').fontSize(18).fontWeight(FontWeight.Bolder)
        }
        .ColumnStyles(120, '#E88686', 'task3')
        .alignRules(task3)
        .offset({ x: 0, y: 10 })

        Column() {
          Image($r('app.media.calendar')).width('50%')
          Text('未来任务').fontSize(18).fontWeight(FontWeight.Bolder)
            .margin({ top: 10, bottom: 10 })
          Text(this.computedStatusCount(taskStatusType.FUTURE) + '任务').fontSize(18).fontWeight(FontWeight.Bolder)
        }
        .ColumnStyles(160, '#9AE9B0', 'task4')
        .alignRules(task4)
        .offset({ x: 0, y: 10 })
        .id('task4')
      }.width('100%')
    }
  }
}


export default taskStatisties
