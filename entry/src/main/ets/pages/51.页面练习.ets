
import headInfo from '../components/headInfo'
import centerContent from '../components/centerContent'
import footer from '../components/footer'

@Entry
@Component
struct Index {
  build() {
    Column(){
      headInfo()
      centerContent()
      footer()
    }.height('100%')
  }
}