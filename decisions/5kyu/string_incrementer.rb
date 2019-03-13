def increment_string(input)
  string = input.gsub(/\d+\z/, '')
  numbers = input.scan(/\d+\z/) == [] ? ['0'] : input.scan(/\d+\z/)
  string + (numbers[0].to_i + 1).to_s.rjust(numbers[0].size, '0')
end

increment_string("foo")#, "foo1")
increment_string("")#, "foobar002")
increment_string("")#, "1")

# Besr practice
# def increment_string(input)
#   input.sub(/\d*$/) { |n| n.empty? ? 1 : n.succ }
# end