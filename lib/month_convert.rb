def find_month(month)
  months = ["Placeholder", "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
  return months[month].to_s
end

def month_string(month)
  month = month.downcase
  case month
  when "january"
    month_num = 1
  when "february"
    month_num = 2
  when "march"
    month_num = 3
  when "april"
    month_num = 4
  when "may"
    month_num = 5
  when "june"
    month_num = 6
  when "july"
    month_num = 7
  when "august"
    month_num = 8
  when "september"
    month_num = 9
  when "october"
    month_num = 10
  when "november"
    month_num = 11
  when "december"
    month_num = 12
  else 
    raise InvalidMonth
  end
  return month_num
end
