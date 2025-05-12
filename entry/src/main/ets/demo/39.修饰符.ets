
class  person{
   // 不写修饰符 默认是public  实例是可以拿到的
   name:string='名称'
   age:number=0
  readonly height:number=0 //只读属性不允许外部修改
  private sex:string=''
  constructor(name:string) {
     this.name=name
    this.height=100
  }
  editSex(sex:string){
     this.sex=sex
    console.log('修改性别,',this.sex);
  }
}

const  s1:person=new person('小明')
s1.name='小华'
// s1.height=200 // 只读属性不允许外部修改
console.log('当前s1的名称',s1.name,'身高',s1.height);
s1.editSex('男')

@Entry
@Component
struct Index {
  build() {

  }
}