# SegmentTree reference: https://atcoder.jp/contests/abc125/submissions/7376879
# セグ木 ビットOR
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

A_ORDER = 97
alphabet_bit = [1]
25.times { |i| alphabet_bit[i + 1] = alphabet_bit[i] * 2 }
n = gets.to_i
s = gets.chomp.split("").map { |alphabet| alphabet_bit[alphabet.ord - A_ORDER] }
q = gets.to_i
queries = []
q.times do
  tmp = gets.chomp.split
  tmp[0] = tmp[0].to_i
  tmp[1] = tmp[1].to_i
  tmp[2] = tmp[2].to_i if tmp[0] == 2
  queries << tmp
end
seg = SegmentTree.new(s, 0) { |x, y| x | y }
queries.each do |a, b, c|
  if a == 1
    seg.update(b - 1, alphabet_bit[c.ord - A_ORDER])
  else
    puts seg.get(b - 1, c).to_s(2).count("1")
  end
end
