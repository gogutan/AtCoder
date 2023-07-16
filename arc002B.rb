# 日付 加算

require 'time'

s = gets.chomp
time = Time.parse(s)
while true
  if time.year % time.month == 0 && (time.year / time.month) % time.day == 0
    puts time.strftime("%Y/%m/%d")
    break
  else
    time += 24 * 60 * 60
  end
end
