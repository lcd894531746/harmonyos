import datePick from '../components/datePick'
import timePick from '../components/timePick'


interface GeneratedObjectLiteralInterface_1 {
  checkedBackgroundColor: string;
}

interface tags {
  name: string;
  color: string;
}

@Builder
export function addTaskbuild(name: string, param: Object) {
  addTask()
}


interface testModel {
  value: string
  name: string
}

@Extend(TextInput)
function inputStyles() {
  .placeholderColor($r('app.color.title_black'))
  .border({
    width: 1,
    color: {
      top: Color.Transparent,
      bottom: Color.Gray,
      left: Color.Transparent,
      right: Color.Transparent
    }
  })
  .borderRadius(0)
  .backgroundColor(Color.Transparent)
}

@Entry
@Component
struct addTask {
  @State title: string = '新建任务';
  @State inputTitle: string = ''
  @State testModel: testModel = {
    value: '1',
    name: '工作'
  }

  @Styles
  columnin() {
    .width('100%')
    .margin({
      bottom: 20
    })
  }

  // 日期格式化方法
  private formatDate(date: Date): string {
    const year = date.getFullYear();
    const month = String(date.getMonth() + 1).padStart(2, '0'); // 月份补零
    const day = String(date.getDate()).padStart(2, '0'); // 日期补零
    console.log('日期格式化方法', `${year}-${month}-${day}`);
    return `${year}-${month}-${day}`;
  }

  private radioStyle: GeneratedObjectLiteralInterface_1 = {
    checkedBackgroundColor: "#FF6571BC"
  }
  tags: tags[] = [
    {
      name: '工作',
      // backGroundColor: $r('app.color.title_gray'),
      color: 'rgba(189, 28, 208, 1.00)'  //粉色
    },
    {
      name: '生活',
      // backGroundColor: $r('app.color.title_gray'),
      color: 'rgba(255, 20, 147, 1)'  //蓝绿色
    },
    {
      name: '学习',
      // backGroundColor: $r('app.color.title_gray'),
      color: 'rgba(32, 207, 21, 1.00)'  //粉色
    },
    {
      name: '娱乐',
      // backGroundColor: $r('app.color.title_gray'),
      color: 'rgba(19, 56, 183, 1.00)'  //粉色
    }
  ]

  /**
   * 修改 RGBA 颜色的透明度
   * @param color 原始 RGBA 颜色字符串，如 'rgba(255, 20, 147, 0.6)'
   * @param opacity 新的透明度值（0~1）
   * @returns 修改后的 RGBA 颜色字符串
   */
  changeOpacity(color: string, opacity: number): string {
    // 1. 校验输入
    if (!color.startsWith('rgba(') || !color.endsWith(')')) {
      console.error('Invalid RGBA color format');
      return color; // 返回原色值
    }

    // 2. 提取颜色数值
    const values = color
      .substring(5, color.length - 1)// 去掉 'rgba(' 和 ')'
      .split(',')// 分割为数组
      .map(v => parseFloat(v.trim())); // 转为数值

    // 3. 校验并修正透明度
    let newOpacity = opacity;
    if (opacity < 0) {
      newOpacity = 0;
    }
    if (opacity > 1) {
      newOpacity = 1;
    }

    // 4. 返回新颜色
    return `rgba(${values[0]}, ${values[1]}, ${values[2]}, ${newOpacity})`;
  }

  @Consume('localStorage') storage: LocalStorage;
  @Consume('NavPathStackIndex') pageStack: NavPathStack;

  aboutToAppear(): void {
    console.log('获取参数:', this.pageStack.getParamByName('addTask'));
    console.log('节点获取内存:', this.storage.get('name'));
  }

  build() {
    NavDestination() {
      Column() {
        Text(this.title)
          .id('Page01HelloWorld')
          .fontWeight(900)
          .fontColor($r('app.color.title_black'))
          .margin({ bottom: 20 })
        // 内容区域
        Column() {
          // 标题
          Column() {
            Text('标题')
              .fontColor($r('app.color.title_gray'))
              .fontSize(16)
            TextInput({ placeholder: '请输入任务名称', text: $$this.testModel.value })//$$ 双向绑定
              .inputStyles()
              .onChange((e) => {
                // console.log('任务名称', e, this.testModel.value);
              })
          }
          .columnin()
          .alignItems(HorizontalAlign.Start)

          // 日期
          Column() {
            Text('日期')
              .fontColor($r('app.color.title_gray'))
              .fontSize(16)
            datePick({
              onDateSelected: (date: string) => {
                console.log('父组件选中的日期', date);
              }
            }).width('100%').height(40).padding({ left: 20 })
              .border({
                width: 1,
                color: {
                  top: Color.Transparent,
                  bottom: Color.Gray,
                  left: Color.Transparent,
                  right: Color.Transparent
                }
              })
          }
          .columnin()
          .alignItems(HorizontalAlign.Start)

          //时间
          Column() {
            Text('时间')
              .fontColor($r('app.color.title_gray'))
              .fontSize(16)
            Row() {
              timePick({
                onAcceptDate: (date: string) => {
                  console.log('父组件选中的日期', date);
                }
              }).width('50%').height(40).padding({ left: 20 })
                .border({
                  width: 1,
                  color: {
                    top: Color.Transparent,
                    bottom: Color.Gray,
                    left: Color.Transparent,
                    right: Color.Transparent
                  }
                })
              timePick({
                onAcceptDate: (date: string) => {
                  console.log('父组件选中的日期', date);
                }
              })
                .height(40)
                .padding({ left: 20 })
                .margin({ left: 10 })
                .layoutWeight(1)
                .border({
                  width: 1,
                  color: {
                    top: Color.Transparent,
                    bottom: Color.Gray,
                    left: Color.Transparent,
                    right: Color.Transparent
                  }
                })
            }
          }
          .columnin()
          .alignItems(HorizontalAlign.Start)

          //类型
          Column() {
            Text('类型')
              .fontColor($r('app.color.title_gray'))
              .fontSize(16)
            Row() {
              Row() {
                Radio({ value: '1', group: 'radioGroup' })
                  .radioStyle(this.radioStyle)
                Text('个人任务')
                  .fontColor($r('app.color.title_black'))
                  .fontWeight(900)
              }

              Row() {
                Radio({
                  value: '2',
                  group: 'radioGroup'
                }).checked(true)
                  .radioStyle(this.radioStyle)
                Text('工作任务')
                  .fontColor($r('app.color.title_black'))
                  .fontWeight(900)
              }
            }.justifyContent(FlexAlign.SpaceBetween).width('100%').margin({ top: 10 })
          }
          .columnin()
          .alignItems(HorizontalAlign.Start)

          //标签
          Column() {
            Text('标签')
              .fontColor($r('app.color.title_gray'))
              .fontSize(16)
            Row() {
              //  循环 tags
              ForEach(this.tags, (item: tags, index: number) => {
                Text(item.name)
                  .fontColor(item.color)
                  .backgroundColor(this.changeOpacity(item.color, 0.2))
                  .borderRadius(5)
                  .padding({
                    left: 20,
                    right: 20,
                    top: 10,
                    bottom: 10
                  })
                  .textAlign(TextAlign.Center)
                  .fontSize(14)
              })

            }.justifyContent(FlexAlign.SpaceBetween).width('100%').margin({ top: 10 })
          }
          .columnin()
          .alignItems(HorizontalAlign.Start)

          Row() {
            Button('创建任务').width('80%').backgroundColor($r('app.color.title_black'))
              .onClick(() => {
                AlertDialog.show({
                  message: '创建成功'
                })
              })
          }.width('100%').justifyContent(FlexAlign.Center)
        }
        .height('100%')
        .width('100%')
        .alignItems(HorizontalAlign.Start)
      }
      .height('100%')
      .width('100%')
      .padding(10)
    }.hideToolBar(true)
  }
}