let title:string="名称";
console.log('title',title);

function  test(num1:number,num2:number):string{
  return num1+num1+''
}


@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  // 定义一个变量
  newName:string ="你好啊212x"
  build() {
    // 相对容器，用于布局子组件
    RelativeContainer() {
      // 文本组件，显示消息和名称，并调用测试函数
      Text(this.message+this.newName+test(1,4))
        .id('HelloWorld') // 设置组件ID
        .fontWeight(FontWeight.Bold) // 设置字体粗细
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center }, // 垂直居中对齐
          middle: { anchor: '__container__', align: HorizontalAlign.Center } // 水平居中对齐
        })
        .onClick(() => {
          this.message = 'Welcome'; // 点击时更新消息
        })
    }
    .height('100%') // 设置容器高度为100%
    .width('100%') // 设置容器宽度为100%
  }
}