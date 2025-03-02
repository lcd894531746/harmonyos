

interface catClass{
  name:string
  color:ResourceColor
}
class cat {
  name:string="Tom"
  food?:string //可选字段,
  color:ResourceColor=''
  constructor(option:catClass) {
    this.name=option.name
    this.color=option.color
  }
}

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
      Text('名称:'+this.catInfo.name).fontColor(this.catInfo.color)
    }
  }
}