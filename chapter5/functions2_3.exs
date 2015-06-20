fizz_buzz = fn
  0, 0, _ -> "FizzBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, a -> "#{a}"
end

call_fb = fn n -> fizz_buzz.(rem(n, 3), rem(n, 5), n) end

IO.puts call_fb.(10)
IO.puts call_fb.(11)
IO.puts call_fb.(12)
IO.puts call_fb.(13)
IO.puts call_fb.(14)
IO.puts call_fb.(15)
IO.puts call_fb.(16)
IO.puts call_fb.(17)
