import { Router } from '@kit.ArkUI';

import router from '@ohos.router';

@Entry
@Component
struct Secends {
  @State message: string = '第二个页面';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('SecendsHelloWorld')
        .fontSize($r('app.float.page_text_font_size'))
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
        .onClick(() => {
          // this.message = 'Welcome';
          this.message = JSON.stringify(router.getParams())
          //   延迟执行
          let timer = setTimeout(() => {
                router.back()
          },2000)
        })
    }
    .height('100%')
    .width('100%')
  }
}