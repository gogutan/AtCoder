# 最小が最上位の親になる 優先度付きキュー PQ
# 最大が最上位の親にする時は、コメントアウト箇所を変更
# 更新機能
class PriorityQueue
  attr_accessor :data, :size

  def initialize(array = [])
    @data = []
    array.each { |a| push(a) }
  end

  def push(element)
    current = @data.size
    @data[up_heap(current, element)] = element
  end

  def pop
    ret = @data.first
    x = @data.last
    @data[down_heap(0, x)] = x
    @data.pop
    ret
  end

  def update(current, element)
    index = up_heap(current, element)
    index = down_heap(current, element) if index == current
    @data[index] = element
  end

  def size
    @data.size
  end

  def front
    @data.first
  end

  def empty?
    @data.empty?
  end

  def parent(num)
    (num - 1) / 2
  end

  def left_child_index(num)
    2 * num + 1
  end

  def right_child_index(num)
    2 * num + 2
  end

  def have_parent?(index)
    index > 0
  end

  def have_child?(index)
    left_child_index(index) < @data.size
  end

  private

    def up_heap(current, element)
      while have_parent?(current)
        p_index = parent(current)
        # break if @data[p_index] >= element
        break if @data[p_index] <= element
        @data[current] = @data[p_index]
        current = p_index
      end
      current
    end

    def down_heap(current, element)
      while have_child?(current)
        a_index = left_child_index(current)
        b_index = right_child_index(current)
        # a_index = b_index if @data[b_index] && @data[b_index] > @data[a_index]
        # break if @data[a_index] <= element
        a_index = b_index if @data[b_index] && @data[b_index] < @data[a_index]
        break if @data[a_index] >= element
        @data[current] = @data[a_index]
        current = a_index
      end
      current
    end
end

n, m = gets.split.map(&:to_i)
nums = gets.split.map(&:to_i)
pq = PriorityQueue.new(nums.map { |i| -i } )
m.times { pq.push((pq.pop / 2.0).ceil) }
puts -pq.data.inject(:+)
