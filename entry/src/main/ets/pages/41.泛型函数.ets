

//泛型

function  fn1<T>(params:T):T{
  return  params
}

console.log('fn1',fn1(1))
console.log('fn1',fn1('sasa'))

// 传入类型是数组 数组项是什么不确定  但是返回项是确定的
function  fn2<T>(arr:T[]):number{
  return arr.length
}

console.log('fn2',fn2([2,4,5,6,6,7,8,8,9]))
console.log('fn2',fn2(["1",'2']))

// 传入的是数组 但是数组项 不一定  返回值也不一定
function  fn3<T>(arr:T[]):T{
  return arr[arr.length-1]
}

console.log('fn3',fn3([1,'2','[]',232]))


@Entry
@Component
struct Index {
  build() {

  }
}