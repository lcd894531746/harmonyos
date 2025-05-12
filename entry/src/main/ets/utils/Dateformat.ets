/**
 * 日期格式化工具
 * @param date 日期（Date对象或时间戳）
 * @param format 格式字符串，默认 'YYYY-MM-DD'
 * @returns 格式化后的日期字符串
 */
export function formatDate(
  date: Date | number,
  format: string = 'YYYY-MM-DD'
): string {
  // 统一转为Date对象
  const d = typeof date === 'number' ? new Date(date) : date;

  const year = d.getFullYear();
  const month = String(d.getMonth() + 1).padStart(2, '0'); // 补零
  const day = String(d.getDate()).padStart(2, '0');
  const hours = String(d.getHours()).padStart(2, '0');
  const minutes = String(d.getMinutes()).padStart(2, '0');
  const seconds = String(d.getSeconds()).padStart(2, '0');

  // 替换格式占位符
  return format
    .replace('YYYY', String(year))
    .replace('MM', month)
    .replace('DD', day)
    .replace('HH', hours)
    .replace('mm', minutes)
    .replace('ss', seconds);
}


// 随机获取当前年月的日的前后一周的日期
export function getRandomDate(): string {

  const now = new Date();
  const currentYear = now.getFullYear();
  const currentMonth = now.getMonth() + 1;
  const currentDay = now.getDate();

  return formatDate(
    new Date(
      currentYear,
      currentMonth - 1,
      Math.floor(Math.random() * 7) + currentDay - 3
    )
  );
}
