

interface catClass{
  name:string
  color:ResourceColor
}
class cat {
  //static 只能提供给class 类自己使用
  static  version:string='0.0.1'
  static random():number{
    return 1
  }
  name:string="Tom"
  food?:string //可选字段,
  color:ResourceColor=''
  constructor(option:catClass) {
    this.name=option.name
    this.color=option.color
  }
  showInfo():string{
    let word:string=`详细信息===名称:${this.name} 颜色:${this.color}`
    return word
  }
}

console.log('静态:',cat.version)
@Entry
@Component
struct Index {

  @State catInfo:cat=new cat({
    name:'hot',
    color:Color.Pink
  })
  build() {
    Column(){
      Text('cat 信息')
      Button('名称:'+this.catInfo.name).fontColor(this.catInfo.color)
        .onClick(()=>{
          AlertDialog.show({message:this.catInfo.showInfo()})
        })

    }
  }
}