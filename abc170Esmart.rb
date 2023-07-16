# セグ木
class SegmentTree
  # 配列（もしくは配列のサイズ）、初期値、function
  def initialize(n, unity, &func)
    raise ArgumentError if !n || !unity || !block_given?
    @size_r = 1
    @n = (n.is_a?(Array) ? n.size : n)
    while @size_r < @n
      @size_r <<= 2
    end
    @func = func
    # 初期値
    @unity = unity
    @data = Array.new(@size_r * 2, @unity)
    # 配列が渡された場合、初期値をセットして辺を張る
    if n.is_a?(Array)
      @n.times { |i| @data[i + @size_r] = n[i] }
      self.build()
    end
  end

  # 0-indexed
  def set(index, value)
    raise IndexError if index >= @n
    @data[index + @size_r] = value
  end

  # 辺を張る
  def build
    (@size_r - 1).downto(1) do |k|
      @data[k] = @func.call(@data[k * 2], @data[k * 2 + 1])
    end
  end

  # 0-indexed
  def update(index, value)
    raise IndexError if index >= @n
    index += @size_r
    @data[index] = value
    index >>= 1
    while index > 0
      @data[index] = @func.call(@data[index * 2], @data[index * 2 + 1])
      index >>= 1
    end
    true
  end

  # 0-indexed b を含まず
  def get(a, b)
    raise IndexError if a > @n || b > @n || a > b
    vleft = vright = @unity
    left = a + @size_r
    right = b + @size_r
    while (left < right)
      if left.odd?
        vleft = @func.call(vleft, @data[left])
        left += 1
      end
      if right.odd?
        right -= 1
        vright = @func.call(@data[right], vright)
      end
      left >>= 1
      right >>= 1
    end
    @func.call(vleft, vright)
  end

  def [](k)
    @data[@size_r + k]
  end
end

INF = 2 * 10 ** 5
n, q = gets.split.map(&:to_i)
infants = []
n.times do
  infants << gets.split.map(&:to_i)
end
queries = []
q.times do
  queries << gets.split.map(&:to_i)
end

kinders = Array.new(INF) { Hash.new(0) }
infants.each do |rate, kinder|
  kinders[kinder - 1][rate] += 1
end

maxs = (0...INF).map { |i| kinders[i].keys.max || 0 }

seg = SegmentTree.new(maxs, 0) { |x, y|
  if x == 0
    y
  elsif y == 0
    x
  else
    x < y ? x : y
  end
}

queries.each do |c, d|
  rate, from = infants[c - 1]
  infants[c - 1][1] = d
  kinders[from - 1][rate] -= 1
  kinders[d - 1][rate] += 1
  if maxs[d - 1] < rate
    maxs[d - 1] = rate
    seg.update(d - 1, rate)
  end
  if maxs[from - 1] == rate
    tmp = 0
    kinders[from - 1].each do |k, v|
      if v > 0 && k > tmp
        tmp = k
      end
    end
    maxs[from - 1] = tmp
    seg.update(from - 1, tmp)
  end
  puts seg.get(0, INF)
end
