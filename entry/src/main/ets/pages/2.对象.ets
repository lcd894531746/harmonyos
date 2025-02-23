


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
    RelativeContainer() {
      Text(this.message+this.newName+test(1,4))
        .id('HelloWorld')
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
        .onClick(() => {
          this.message = 'Welcome';
        })
    }
    .height('100%')
    .width('100%')
  }
}