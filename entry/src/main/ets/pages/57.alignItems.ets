// box2
let box2: Record<string, Record<string, string | VerticalAlign | HorizontalAlign>> = {
  'top': { 'anchor': '__container__', 'align': VerticalAlign.Top },
  'right': { 'anchor': '__container__', 'align': HorizontalAlign.End },
}

let box3: Record<string, Record<string, string | VerticalAlign | HorizontalAlign>> = {
  'center': { 'anchor': '__container__', 'align': VerticalAlign.Center },
  'middle': { 'anchor': '__container__', 'align': HorizontalAlign.Center },
}

let box4: Record<string, Record<string, string | VerticalAlign | HorizontalAlign>> = {
  'bottom': { 'anchor': '__container__', 'align': VerticalAlign.Bottom },
  'left': { 'anchor': '__container__', 'align': HorizontalAlign.Start },
}


let box5: Record<string, Record<string, string | VerticalAlign | HorizontalAlign>> = {
  'right': { 'anchor': '__container__', 'align': HorizontalAlign.End },
  'bottom': { 'anchor': '__container__', 'align': VerticalAlign.Bottom },
}

@Entry
@Component
struct Index {
  @Styles
  int(){
    .width(100)
    .height(100)
    .backgroundColor(Color.Brown)
  }

  build() {
    Column() {
      RelativeContainer() {
        Column() {
          Text('box1')
        }.int()
        .justifyContent(FlexAlign.Center)
        .alignItems(HorizontalAlign.Center)

        Column() {
          Text('box2')
        }.int()
        .alignRules(box2)
        .justifyContent(FlexAlign.Center)
        .alignItems(HorizontalAlign.Center)

        Column() {
          Text('box3')
        }.int()
        .alignRules(box3)
        .justifyContent(FlexAlign.Center)
        .alignItems(HorizontalAlign.Center)

        Column() {
          Text('box4')
        }.int()
        .alignRules(box4)
        .justifyContent(FlexAlign.Center)
        .alignItems(HorizontalAlign.Center)

        Column() {
          Text('box5')
        }.int()
        .alignRules(box5)
        .justifyContent(FlexAlign.Center)
        .alignItems(HorizontalAlign.Center)
      }
      .height(300)
      .width(300)
      .border({
        width: 1,
        color: Color.Red
      })
    }
    .height('100%')
    .width('100%')
    .justifyContent(FlexAlign.Center)
    .alignItems(HorizontalAlign.Center)
  }
}