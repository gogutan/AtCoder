deg, dis = gets.split.map(&:to_i)
deg /= 10.0
if deg < 11.25
  dir = "N"
elsif deg < 33.75
  dir = "NNE"
elsif deg < 56.25
  dir = "NE"
elsif deg < 78.75
  dir = "ENE"
elsif deg < 101.25
  dir = "E"
elsif deg < 123.75
  dir = "ESE"
elsif deg < 146.25
  dir = "SE"
elsif deg < 168.75
  dir = "SSE"
elsif deg < 191.25
  dir = "S"
elsif deg < 213.75
  dir = "SSW"
elsif deg < 236.25
  dir = "SW"
elsif deg < 258.75
  dir = "WSW"
elsif deg < 281.25
  dir = "W"
elsif deg < 303.75
  dir = "WNW"
elsif deg < 326.25
  dir = "NW"
elsif deg < 348.75
  dir = "NNW"
else
  dir = "N"
end

dis_per_min = (dis / 60.0).round(1)

if dis_per_min <= 0.2
  w = 0
elsif dis_per_min <= 1.5
  w = 1
elsif dis_per_min <= 3.3
  w = 2
elsif dis_per_min <= 5.4
  w = 3
elsif dis_per_min <= 7.9
  w = 4
elsif dis_per_min <= 10.7
  w = 5
elsif dis_per_min <= 13.8
  w = 6
elsif dis_per_min <= 17.1
  w = 7
elsif dis_per_min <= 20.7
  w = 8
elsif dis_per_min <= 24.4
  w = 9
elsif dis_per_min <= 28.4
  w = 10
elsif dis_per_min <= 32.6
  w = 11
else
  w = 12
end

dir = "C" if w == 0

puts "#{dir} #{w}"
