import { head,centerCom,foot} from  '../components/layout'

@Entry
@Component
struct Index {
  build() {
    Column(){
      head()
      centerCom().layoutWeight(1)
      foot()
    }.height('100%').width('100%')
  }
}