require 'benchmark'
MAX = 20

def dfs_plus(array, num)
  if num == MAX
    # p array
    return
  end
  dfs_plus(array + [true], num + 1)
  dfs_plus(array + [false], num + 1)
end

def dfs_splat(array, num)
  if num == MAX
    # p array
    return
  end
  dfs_splat([*array, true], num + 1)
  dfs_splat([*array, false], num + 1)
end

Benchmark.bm do |x|
  x.report("plus: ") { dfs_plus([], 0) }
  x.report("splat:") { dfs_splat([], 0) }
end
