@Component
struct son {
  // 为了保证响应式 需要加上 @Prop 修饰符
  @Prop fromFa: string = ''
  change = (msg: string) => {
  }

  build() {
    Column() {
      Text('我是子组件:messge:' + this.fromFa)
      Button('子修改父').onClick(() => {
        //   使用回调函数 修改父数据
        this.change('来自子组件的修改')
      })
    }
  }
}

@Entry
@Component
struct Index {
  @State message: string = '父默认消息'

  build() {
    Column() {
      Text('我是父组件message：' + this.message)
      Button('修改父').onClick(() => {
        this.message = '父修改父消息'
      })
      Row() {
        son({
          fromFa: this.message,
          change: (meg: string) => {
            console.log('子修改父的message');
            this.message = meg
          }
        })
      }
    }
  }
}