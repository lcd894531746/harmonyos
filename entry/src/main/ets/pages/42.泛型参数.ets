//泛型 接口约束   约束 必须含有 接口里面的属性
interface length{
  length:number
}

function  fn1<T extends length>(params:T):T{
  return  params
}

console.log('fn1',fn1<string[]>(['111']))//数组含有length属性

class desk {
  length = 2
}
const  d =new desk() //含有 length属性
fn1<desk>(d)

// 传递多个参数

function  fun2<T1 extends length,T2 extends length>(params1:T1,params2:T2):number{
  return params1.length+params2.length
}

fun2<number[],number[]>([1],[2])


@Entry
@Component
struct Index {
  build() {

  }
}