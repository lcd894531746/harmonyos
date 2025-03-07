// 父子双向传递

interface car {
  name: string
  color: string
}

// 父组件
@Component
struct person {
  @State count: number = 0
  @State car: car = {
    name: '奔驰',
    color: '黄色'
  }
  @Provide test: string = '父-孙'

  build() {
    Column({ space: 20 }) {
      Text(`父组件基础类型:${this.count}`)
      Text(`父组件引用类型:${JSON.stringify(this.car)}`)
      Button('修改数据')
        .onClick(() => {
          this.count++
          this.car.name = '宝马'
          this.test = '祖修自己'
        })
      son({
        count: this.count,
        car: this.car
      })
    }.backgroundColor(Color.Gray).width('100%').height('100%').padding(20)
  }
}

@Component
struct son {
  @Link count: number
  @Link car: car

  build() {
    Column({ space: 20 }) {
      Text(`子组件基础类型:${this.count}`)
      Text(`子组件引用类型:${JSON.stringify(this.car)}`)
      Button('修改数据')
        .onClick(() => {
          this.count++;
          this.car.name = 'benci'
        })
      sunZi()
    }
  }
}

@Component
struct sunZi {
  @Consume test: string

  build() {
    Column({ space: 20 }) {
      Text(`孙子组件基础类型:${this.test}`)
      // Text(`孙子组件引用类型:${JSON.stringify(this.test)}`)
      Button('孙修祖修改数据')
        .onClick(() => {
          this.test = '孙修祖'
        })
    }
  }
}


@Entry
@Component
struct Index {
  build() {
    Column() {
      person()
    }
  }
}