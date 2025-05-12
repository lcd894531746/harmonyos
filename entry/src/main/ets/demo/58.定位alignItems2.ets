// box2
let box2: Record<string, Record<string, string | VerticalAlign | HorizontalAlign>> = {
  'bottom': { 'anchor': 'box3', 'align': VerticalAlign.Top },
  'left': { 'anchor': 'box3', 'align': HorizontalAlign.End },
}

let box3: Record<string, Record<string, string | VerticalAlign | HorizontalAlign>> = {
  'top': { 'anchor': 'box1', 'align': VerticalAlign.Bottom },
  'left': { 'anchor': 'box1', 'align': HorizontalAlign.End },
}

let box4: Record<string, Record<string, string | VerticalAlign | HorizontalAlign>> = {
  'top': { 'anchor': "box3", 'align': VerticalAlign.Bottom },
  'right': { "anchor": "box3", 'align': HorizontalAlign.Start }
}


let box5: Record<string, Record<string, string | VerticalAlign | HorizontalAlign>> = {
  'top': { 'anchor': 'box3', 'align': VerticalAlign.Bottom },
  'left': { 'anchor': 'box3', 'align': HorizontalAlign.End }
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
        }
        .id('box1')
        .int()
        .justifyContent(FlexAlign.Center)
        .alignItems(HorizontalAlign.Center)

        Column() {
          Text('box2')
        }
        .int()
        .id('box2')
        .alignRules(box2)
        .justifyContent(FlexAlign.Center)
        .alignItems(HorizontalAlign.Center)

        Column() {
          Text('box3')
        }
        .int()
        .id('box3')
        .alignRules(box3)
        .justifyContent(FlexAlign.Center)
        .alignItems(HorizontalAlign.Center)

        Column() {
          Text('box4')
        }
        .int()
        .id('box4')
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