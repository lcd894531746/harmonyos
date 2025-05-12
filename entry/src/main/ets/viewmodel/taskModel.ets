import { formatDate, getRandomDate } from '../utils/Dateformat'


enum taskStatusType {
  DONE = 'done',
  UNDONE = 'undone',
  FUTURE = 'future',
  DOING = 'doing'
}

export class taskModel {
  id: string = '';
  taskName: string = '';
  taskTime: string = '';
  taskBeginDate: string = '';
  taskEndDate: string = '';
  taskType: number = 1;
  taskTitle: string = '';
  taskStatus: string = '';

  constructor(id: string, taskName: string, taskTime: string, taskBeginDate: string, taskEndDate: string,
    taskType: number = 1, taskTitle: string) {
    this.id = id;
    this.taskName = taskName;
    this.taskTime = taskTime;
    this.taskBeginDate = taskBeginDate;
    this.taskEndDate = taskEndDate;
    this.taskType = taskType;
    this.taskTitle = taskTitle;

    this.updateTaskStatus();
  }

  // 根据当前任务时间  计算我们的任务状态
  updateTaskStatus() {
    if (this.taskBeginDate && this.taskEndDate) {
      const currentDate = formatDate(new Date());
      const taskTime = formatDate(new Date(this.taskTime));
      if (taskTime > currentDate) {
        this.taskStatus = taskStatusType.DONE;
      } else if (taskTime === currentDate) {
        this.taskStatus = taskStatusType.DOING;
      } else if (taskTime <= currentDate) {
        this.taskStatus = taskStatusType.UNDONE;
      } else {
        this.taskStatus = taskStatusType.FUTURE;
      }
    }
  }
}


// 模拟出一些数据

class createTaskList {
  private taskList: taskModel[] = [];

  init() {
    for (let index = 0; index < 100; index++) {
      this.taskList.push(new taskModel(
        `${index + 1}`,
        `任务${index}`,
        getRandomDate(),
        `09:00`,
        `18:00`,
        1,
        `${index + 1}、完成HarmoneyOs第一阶段项目`,
      ))
    }
    return this.taskList;
  }
}

export default new createTaskList()