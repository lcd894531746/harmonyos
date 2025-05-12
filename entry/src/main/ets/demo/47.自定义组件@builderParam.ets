import { defaultAppManager } from '@kit.AbilityKit'


@Component
struct somComp {
  @BuilderParam  contentBuild:()=>void =this.defaultBuild
  @Builder
  defaultBuild(){
    Text('我是默认')
  }
  build() {
    Column(){
      this.contentBuild()
    }
  }
}

@Entry
@Component
struct Index {

  build() {
    Column(){
      somComp(){
        Button('自定义').onClick((event: ClickEvent) => {
        }).width(100)
      }
    }
  }
}