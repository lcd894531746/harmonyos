class Person {
  name: string = ''
  age: number = 0

  constructor(name: string, age: number) {
    this.name = name
    this.age = age
  }
  sayHi(p:string) {
    console.log('哈喽,我是父类shuo :',p);
  }
}

class Student extends Person {
  constructor(name: string, age: number) {
    super(name, age)
  }
  sayHi(p: string): void {
    console.log('学生重写父类方法:');
  }

  //   自己的方法
  studentSay(){
    super.sayHi('子调父')
    console.log('调用完毕父之后的子')
  }

}

const s1 = new Student('小明', 11)
console.log('我是学生:', s1.name, s1.age);
s1.sayHi("ppppp");
s1.studentSay();

@Entry
@Component
struct Index {
  build() {
    Text('class 继承')
  }
}