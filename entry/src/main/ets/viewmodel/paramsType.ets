//使用泛型 约束路由传参 （类型断言：告诉编辑器我比你更知道传递进去的数据类型  不需要编辑器 自己去推断类型）
export class ParamsType<T> {
  value: T

  constructor(value: T) {
    this.value = value
  }
}

//页面使用 如接受的参数是params
// textModel是用户自己定义的数据类型
// Params as ParamsType<textModel>
