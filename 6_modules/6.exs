defmodule Chop do
  def guess(current, lower..upper) do
    number = div((lower + upper), 2)
    IO.puts "Is it #{number}"
    find_it(current, number, lower..upper)
  end

  def find_it(number, number, _) do
    IO.puts "Found it! #{number}"
  end

  def find_it(current, number, _..upper) when current > number do
    guess(current, number..upper)
  end

  def find_it(current, number, lower.._) when current < number do
    guess(current, lower..number)
  end
end

Chop.guess(273, 1..1000)
