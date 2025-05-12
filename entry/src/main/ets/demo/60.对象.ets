import { UserModel } from '../viewmodel/UserModel'

@Entry
@Component
struct Index {
  @State UserInfo: UserModel = new UserModel('小王', 1)
  @State UserInfos: UserModel[] = [new UserModel('小王', 1), new UserModel('小王', 1), new UserModel('小王', 1)]
  @State UserInfos1: Array<UserModel> = [new UserModel('小王', 1), new UserModel('小王', 1), new UserModel('小王', 1)]//泛型写法

  build() {
    Column() {
      Text(this.UserInfos[0].name)
    }
    .width('100%')
    .height('100%')
    .alignItems(HorizontalAlign.Center)
    .justifyContent(FlexAlign.Center)
  }
}