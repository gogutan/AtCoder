num_of_videos, rest_of_watches = gets.split(" ").map(&:to_i)
videos = gets.chomp.split(" ").map(&:to_i)
videos.sort!
rate = 0.0
videos.each_with_index do |video, index|
  #rateよりvideoの方が高く、残り視聴数が残りビデオ数以上である時
  if rate < video && rest_of_watches >= (videos.length - index)
    rate = (rate + video) / 2
    rest_of_watches -= 1
  end
end
puts rate