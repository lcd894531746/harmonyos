

interface  person  {
  name:String,
  age:number,
  gender:string,
  stuId:number
}

let arr1:person[] =[
  {
    name:'小明',
    age:1,
    gender:'aaa',
    stuId:2
  }
]
console.log(JSON.stringify(arr1));
@Entry
@Component
struct Index {
  build() {
    Column(){
      Text('for循环')

    }

  }
}