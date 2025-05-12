import { taskModel } from "../viewmodel/taskModel"

@Component
struct taskItem {
  @Prop taskList: Array<taskModel> = []
  ClickItem = (item: taskModel) => {
  }

  build() {
    Column() {
      Row() {
        Text('今日任务').fontSize(24).fontWeight(FontWeight.Bolder)
        Text('查看更多')
          .fontSize(14)
          .fontWeight(FontWeight.Bolder)
          .fontColor($r('app.color.title_black'))
          .margin({ left: 10 })
          .onClick(() => {
            console.log('查看更多')
          })
      }.justifyContent(FlexAlign.SpaceBetween).width('100%').margin({ bottom: 10 })

      // taskList
      ForEach(this.taskList, (item: taskModel, index) => {
        Column() {
          Row() {
            Image($r('app.media.calendar2')).width(20).margin({ right: 20 })
            Text(item.taskTitle)
              .textOverflow({ overflow: TextOverflow.Ellipsis })
              .maxLines(1)
              .fontSize(18)
              .padding({ right: 20 })
              .fontWeight(FontWeight.Bolder)
              .fontColor($r('app.color.title_black'))
          }

          Text(`${item.taskTime} ${item.taskBeginDate}`)
            .fontSize(14)
            .fontWeight(FontWeight.Bolder)
            .margin({ bottom: 10, top: 10 })
          Button(item.taskType == 1 ? '生活' : '工作')
            .padding({ left: 30, right: 30, })
            .height(30)
            .backgroundColor('#ff9b2222')
        }
        .alignItems(HorizontalAlign.Start)
        .width('100%')
        .margin({ bottom: 10 })
        .backgroundColor(Color.White)
        .borderRadius(5)
        .padding({
          left: 15,
          right: 15,
          top: 10,
          bottom: 10
        })
        .onClick(() => {
          this.ClickItem(item)
        })
      }, (item: taskModel, index) => item.id)
    }.width('100%').alignItems(HorizontalAlign.Start)
  }
}


export default taskItem