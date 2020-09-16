# clock.rb
def clock(hours, minutes, seconds)
  if hours < 0 || hours > 23
    raise ArgumentError, "Invalid hours #{hours}"
  end

  if hours < 10
    hours = "0#{hours}"
  elsif
  minutes < 10
    minutes = "0#{minutes}"
  elsif
  seconds < 10
    minutes = "0#{minutes}"
  end
  return "#{hours}:#{minutes}:#{seconds}"
end

# def clock(hours, minutes, seconds)
#   time_div = [hours, minutes, seconds]
#   time_strings = time_div.map do |item|
#     if item < 10
#       "0#{item}"
#     else
#       "#{item}"
#     end
#   end
#   return "#{time_strings[0]}:#{time_strings[1]}:#{time_strings[2]}"
# end
#
# def clock(hours, minutes, seconds)
#   time_fields = [hours, minutes, seconds]
#   max_values = [23, 59, 59]
#
#   time_fields.each_with_index do |field, index|
#     if field > max_values[index]
#       raise ArgumentError.new("#{field} is too large")
#     end
#   end
#
#   time_fields.map! do |field|
#     if field < 10
#       "0#{field}"
#     else
#       "#{field}"
#     end
#   end
#
#   return "#{time_fields[0]}:#{time_fields[1]}:#{time_fields[2]}"
# end