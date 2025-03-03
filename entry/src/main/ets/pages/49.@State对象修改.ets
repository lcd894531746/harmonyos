
interface  car{
  name:string
  type:string
}

interface  person{
  name:string
  car:car
}

@Entry
@Component
struct Index {
  @State message:string='修改前'
  @State person:person={
    name:"小明",
    car:{
      name:'丰田',
      type:'suv'
    }
  }

  build() {
    Column(){
      Row(){
        Button(this.message).onClick((event: ClickEvent) => {
          this.message='修改之后'
        })
        Button(this.person.car.name +this.person.car.type).onClick((event: ClickEvent) => {
          // this.person.car.name='奔驰' //无法修改  需要修改整个对象
          this.person.car={
            name:'奔驰',
            type :'jiaoche '
          }
        })
      }
    }

  }
}