// 生命周期
import { router } from '@kit.ArkUI';


@Entry
@Component
struct Index {
  @State page: string = '生命周期'
  // 组件生命周期在前面  页面生命周期在后
  // 组件生命周期
  aboutToAppear(): void {
    console.log('组件生命周期aboutToAppear', this.page);
  }

  // 组件销毁生命周期 //不能修改  状态变量
  aboutToDisappear(): void {
    console.log('组件销毁生命周期aboutToAppear');
  }

  // 仅仅只有在@Entey 页面才能出发  也就是页面的生命周期  纯组件是不能使用的
  // 页面展示
  onPageShow(): void {
    console.log('页面展示onPageShow');
  }

  // 返回触发  return true 阻止返回键默认返回效果
  onBackPress(): boolean | void {
    console.log('页面返回触发');
  }
  // 页面隐藏
  onPageHide(): void {
    console.log('页面隐藏onPageShow');
  }

  build() {
    Row() {
      Text('生命周期')
      Button('离开页面')
        .onClick(() => {
          router.pushUrl({ url: "pages/secends" })
        })
    }
  }
}