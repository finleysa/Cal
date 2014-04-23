def find_month(month)
  case month
  when 1
    month_name = "January"
  when 2
    month_name = "February"
  when 3
    month_name = "March"
  when 4
    month_name = "April"
  when 5
    month_name = "May"
  when 6
    month_name = "June"
  when 7
    month_name = "July"
  when 8
    month_name = "August"
  when 9
    month_name = "September"
  when 10
    month_name = "October"
  when 11
    month_name = "November"
  when 12
    month_name = "December"
  else 
    raise InvalidMonth, "WTF, that's not a month yo"
  end
  return month_name
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
    raise InvalidMonth, "WTF, that's not a month yo"
  end
  return month_num
end
