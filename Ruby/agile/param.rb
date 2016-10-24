def my_method
  yield 1
  yield 2
  yield 3
end

my_method { |param| puts param }