# 上位ノードほど @rank が大きい数字となる
class Node
  attr_accessor :parent, :rank

  # 親は自分自身、ランクは 0 として初期化する
  def initialize(n)
    @parent = n
    @rank = 0
  end
end

class UnionFind
  # 0 から n - 1 までのノードを初期化する
  def initialize(n)
    @nodes = (0...n).map { |i| Node.new(i) }
  end

  # 再帰で最も上位の親を探し、その値を返す（更新しないため少し遅い）
  def root(x)
    return x if @nodes[x].parent == x
    root(@nodes[x].parent)
  end

  # a と b を仲間にする
  def unite(a, b)
    # a_root = root(a)
    # b_root = root(b)
    # # a 及び b の親が同じ場合は何もしない
    # return if a_root == b_root

    # a親ランク < b親ランク の場合は、b親をa親の親とする
    # なお、ランクをいじる必要はなし
    # if @nodes[a_root].rank < @nodes[b_root].rank
      # @nodes[a_root].parent = b_root
    # その他の場合は、a親をb親の親とする
    # else
      @nodes[b].parent = a
    # a親、及びb親のランクが同じ場合は、a親のランクを +1 する
      # @nodes[a_root].rank += 1 if @nodes[a_root].rank == @nodes[b_root].rank
    # end
  end

  # a と b の最も上位の親が同じかどうかを返す
  def same?(a, b)
    root(a) == root(b)
  end

  # 各ノードの親を全て出力する確認用
  def parents
    @nodes.map(&:parent)
  end

  def boss?(a, b)
    until a == b
      return false if a == @nodes[a].parent
      a = @nodes[a].parent
    end
    return true
  end

  # 各ノードの最も上位の親を全て出力する確認用
  def roots
    @nodes.size.times.map { |i| root(i) }
  end
end

n = gets.to_i
bosses = []
n.times { bosses << gets.to_i }
q = gets.to_i
queries = []
q.times { queries << gets.split.map(&:to_i) }
tree = UnionFind.new(n)

bosses.each_with_index do |boss, subordinate|
  next if boss == -1
  boss -= 1
  tree.unite(boss, subordinate)
end

queries.each do |a, b|
  puts tree.boss?(a - 1, b - 1) ? "Yes" : "No"
end
