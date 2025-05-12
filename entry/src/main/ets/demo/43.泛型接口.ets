interface funobj <T>{
    id:(value:T)=>T
    ids:()=>T[]
}
// 字符串数组
const  obj:funobj<string> ={
    id(value:string){
      return value
    },
    ids(){
        return ['11']
    }
}

// 数字类型数组
const  obj2:funobj<string> ={
  id(value:string){
    return value
  },
  ids(){
    return ['11']
  }
}


@Entry
@Component
struct Index {
  build() {

  }
}