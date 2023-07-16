N = gets.to_i
def dfs (array = [])
  if array.size == N
    puts array.join
    return
  end
  dfs(array + ["a"])
  dfs(array + ["b"])
  dfs(array + ["c"])
end
dfs
