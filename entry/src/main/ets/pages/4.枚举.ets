//定义接口

interface Person{
  name:string|number
  age:number
  canDo:(type:string)=>string
}


let person1:Person= {
  name: 111,
  age: 18,
  canDo: (type:string) =>{
    return  `会${type}`
  }
}

console.log("姓名:",person1.name,person1.canDo('唱歌'));

// 联合类型

let  sex: "man"|"women"|'secret' = 'man'

// 枚举
enum colors {
   red = '#fff60404',
   whi="#fff",
  black='#000000',
}
let color1:colors=colors.black
console.log("枚举",color1);

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  // 定义一个变量
  newName:string ="学鸿蒙来黑马"
  build() {
    RelativeContainer() {
      Text(this.message+this.newName)
        .id('HelloWorld')
        .fontColor(color1)
        .fontWeight(FontWeight.Bolder)
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