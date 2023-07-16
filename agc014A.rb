def exchange(cookies)
  a, b, c = cookies
  [b / 2 + c / 2, a / 2 + c / 2, a / 2 + b / 2]
end

cookies = gets.split.map(&:to_i)

ans = 0
until cookies.any? { |cookie| cookie.odd? }
  exchanged_cookies = exchange(cookies)
  if cookies.sort == exchanged_cookies.sort
    puts -1
    exit
  else
    cookies = exchanged_cookies
    ans += 1
  end
end
puts ans
