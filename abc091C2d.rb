# Solution reference: https://qiita.com/drken/items/e805e3f514acceb87602#%E6%9C%80%E5%A4%A7%E4%BA%8C%E9%83%A8%E3%83%9E%E3%83%83%E3%83%81%E3%83%B3%E3%82%B0%E5%95%8F%E9%A1%8C%E3%82%92%E6%9C%80%E5%A4%A7%E6%B5%81%E5%95%8F%E9%A1%8C%E3%81%AB%E5%B8%B0%E7%9D%80%E3%81%99%E3%82%8B
# Dinic reference: https://atcoder.jp/contests/abc091/submissions/5569121
class Dinic
  attr_accessor :g
  def initialize(v, inf = 2 ** 30)
    @V = v
    @inf = inf
    @g = Array.new(v) { [] }
    @level = Array.new(v, 0)
    @iter = Array.new(v, 0)
  end

  def add_edge(from, to, cap)
    @g[from] << {to: to, cap: cap, rev: @g[to].size}
    @g[to] << {to: from, cap: 0, rev: @g[from].size - 1}
  end

  def max_flow(s, t)
    flow = 0
    loop do
      bfs(s)
      return flow if @level[t] < 0
      @iter = Array.new(@V, 0)
      f = dfs(s, t, @inf)
      while f > 0
        flow += f
        f = dfs(s, t, @inf)
      end
    end
  end

  private
    def bfs(s)
      @level = Array.new(@V, -1)
      @level[s] = 0
      q = [s]
      until q.empty?
        v = q.shift
        @g[v].size.times do |i|
          e = @g[v][i]
          if e[:cap] > 0 && @level[e[:to]] < 0
            @level[e[:to]] = @level[v] + 1
            q << e[:to]
          end
        end
      end
    end

    def dfs(v, t, f)
      return f if v == t
      (@iter[v]...@g[v].size).each do |i|
        @iter[v] = i
        e = @g[v][i]
        if e[:cap] > 0 && @level[v] < @level[e[:to]]
          d = dfs(e[:to], t, [f, e[:cap]].min)
          if d > 0
            e[:cap] -= d
            @g[e[:to]][e[:rev]][:cap] += d
            return d
          end
        end
      end
      0
    end
end

n = gets.to_i
reds = []
blues = []
n.times { reds << gets.split.map(&:to_i) }
n.times { blues << gets.split.map(&:to_i) }
dinic = Dinic.new(2 * n + 2)
s = 2 * n
t = s + 1

n.times do |i|
  dinic.add_edge(s, i, 1)
  dinic.add_edge(i + n, t, 1)
end

blues.each_with_index do |(blue_x, blue_y), blue_i|
  reds.each_with_index do |(red_x, red_y), red_i|
    if red_x < blue_x && red_y < blue_y
      dinic.add_edge(blue_i, red_i + n, 1)
    end
  end
end

puts dinic.max_flow(s, t)

# 以下、普通の
# n = gets.to_i
# reds = []
# blues = []
# n.times { reds << gets.split.map(&:to_i) }
# n.times { blues << gets.split.map(&:to_i) }
# reds.sort! { |a, b| b[0] <=> a[0] }
# # blue の y が小さい順に見る
# blues.sort! { |a, b| a[1] <=> b[1] }
# blues.each do |blue_x, blue_y|
#   # red の x が大きい順に見て、条件に合致したら削除
#   # この時、y の値は条件に合致すれば何でも良い
#   # （blue の y は小さい順に見ているため）
#   if index = reds.find_index { |red_x, red_y| red_x < blue_x && red_y < blue_y }
#     reds.delete_at(index)
#   end
# end
# puts n - reds.size
