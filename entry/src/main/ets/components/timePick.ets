@Component
struct datePick {
  @State timeDate: string = '请选择时间'
  onAcceptDate = (dateStr: string) => {
  }

  aboutToAppear(): void {
    console.log('aboutToAppear');
    //   初始化日期
  }

  build() {
    Row() {
      Text(this.timeDate)
        .fontColor($r('app.color.title_black'))
        .onClick(() => {
          this.getUIContext().showTimePickerDialog({
            useMilitaryTime: true,
            onAccept: (value: TimePickerResult) => {
              let timtString = JSON.stringify(value)
              console.info("TimePickerDialog:onAccept()", timtString)
              if (value.hour && value.minute) {
                this.timeDate = `${value.hour}:${value.minute}`
                this.onAcceptDate(`${value.hour}:${value.minute}`)
              }
            },
          })
        })
    }
    .width('100%')
    .height('100%')
    .alignItems(VerticalAlign.Center)
  }
}


export default datePick