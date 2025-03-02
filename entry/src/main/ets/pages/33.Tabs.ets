@Entry
@Component
struct Index {
  build() {

    Tabs(){
      TabContent(){
        Column(){
          Text('第一个')
          Text('第一个')
          Text('第一个')
          Text('第一个')
          Text('第一个')
        }
      }.tabBar('一')
      TabContent(){
        Text('第二个')
      }.tabBar('二')
      TabContent(){
        Text('第三个')
      }.tabBar('三')
      TabContent(){
        Text('第四个')
      }.tabBar('四')
    }
  }
}