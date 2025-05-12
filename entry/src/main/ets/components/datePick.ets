@Component
struct datePick {
  // 日期格式化方法
  private formatDate(date: Date): string {
    const year = date.getFullYear();
    const month = String(date.getMonth() + 1).padStart(2, '0'); // 月份补零
    const day = String(date.getDate()).padStart(2, '0'); // 日期补零
    console.log('日期格式化方法', `${year}-${month}-${day}`);
    return `${year}-${month}-${day}`;
  }

  @State selectedDate: string = '' //格式为 -> 2022-01-01
  onDateSelected = (dateStr: string) => {
  }

  aboutToAppear(): void {
    console.log('aboutToAppear');
    //   初始化日期
    this.selectedDate = this.formatDate(new Date());
  }

  build() {
    Row() {
      Text(this.selectedDate)
        .fontColor($r('app.color.title_black'))
        .onClick(() => {
          CalendarPickerDialog.show({
            acceptButtonStyle: {
              fontColor: '#2787d9',
              fontSize: '16fp',
              backgroundColor: '#f7f7f7',
              borderRadius: 10
            },
            cancelButtonStyle: {
              fontColor: Color.Red,
              fontSize: '16fp',
              backgroundColor: '#f7f7f7',
              borderRadius: 10
            },
            onAccept: (date: Date) => {
              const formaDate = this.formatDate(date)
              this.selectedDate = formaDate
              this.onDateSelected?.(formaDate); // 触发事件，通知父组件
            }
          })
        })

    }
    .width('100%')
    .height('100%')
    .alignItems(VerticalAlign.Center)
  }
}


export default datePick