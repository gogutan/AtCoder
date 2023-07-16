n = gets.to_i
matches = []
n.times { matches << gets.split.map(&:to_i) }
queue = (1..n).to_a
delete_list = []
day = 0

until queue.empty?
  until queue.empty?
    me = queue.shift
    # 対戦相手の最初の対戦相手が自分自身なら、それぞれ削除リストに入れる
    # 自分自身のみを入れると、前回対戦しなかった人はキューに入っていないため抜け漏れる
    if opponent = matches[me - 1].first
      if matches[opponent - 1].first == me
        delete_list << me
        delete_list << opponent
      end
    end
  end
  unless delete_list.empty?
    day += 1
    delete_list.uniq!
    until delete_list.empty?
      d = delete_list.shift
      matches[d - 1].shift
      # 対戦した人のみキューに入れる（しなかった人同士のマッチングは発生しないため）
      queue << d
    end
  end
end
puts matches.flatten.empty? ? day : -1
