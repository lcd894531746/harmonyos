import router from '@ohos.router';


// 页面栈
@Entry
@Component
struct Index {
  build() {
    Row() {
      Text('页面栈')
        .onClick(() => {
          //   查看当路由的
          console.log('router', router.getLength(), JSON.stringify(router.getState()));
          router.pushUrl({ url: "pages/secends", params: { id: '11' } })
        })
    }
  }
}