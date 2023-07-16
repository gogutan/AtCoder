# Solution reference: https://betrue12.hateblo.jp/entry/2019/07/05/012450
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

INF = 10 ** 100
n = gets.to_i
dinic = Dinic.new(n + 2)
s = n
t = s + 1
jewels = gets.split.map(&:to_i)
reward = 0
# 罰金化して最小カット問題に帰着
jewels.each_with_index do |jewel, index|
  if jewel > 0
    reward += jewel
    # 残したら罰金 0
    dinic.add_edge(s, index, 0)
    dinic.add_edge(index, t, jewel)
  else
    dinic.add_edge(s, index, -jewel)
    # 割ったら罰金 0
    dinic.add_edge(index, t, 0)
  end
end

# 制約違反の時に、グラフがカットされないように INF の罰金を張る
1.upto(n) do |index|
  ngs = (index * 2).step(n, index).to_a
  ngs.each do |ng|
    dinic.add_edge(index - 1, ng - 1, INF)
  end
end

puts reward - dinic.max_flow(s, t)
