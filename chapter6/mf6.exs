defmodule Chop do
  def guess(actual, lower..upper) do
    number = div((lower + upper), 2)
    IO.puts "Is it #{number}"
    find_it(actual, number, lower..upper)
  end

  def find_it(actual, number, _) when actual == number do
    IO.puts "Found it! #{number}"
  end

  def find_it(actual, number, _..upper) when actual > number do
    guess(actual, number..upper)
  end

  def find_it(actual, number, lower.._) when actual < number do
    guess(actual, lower..number)
  end
end

Chop.guess(273, 1..1000)
