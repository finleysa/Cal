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
    month_name = "Novermber"
  when 12
    month_name = "December"
  else 
    raise InvalidMonth
  end
  return month_name
end

def month_string(month)
  case month
  when "January"
    month_num = 1
  when "February"
    month_num = 2
  when "March"
    month_num = 3
  when "April"
    month_num = 4
  when "May"
    month_num = 5
  when "June"
    month_num = 6
  when "July"
    month_num = 7
  when "August"
    month_num = 8
  when "September"
    month_num = 9
  when "October"
    month_num = 10
  when "November"
    month_num = 11
  when "December"
    month_num = 12
  else 
    raise InvalidMonth
  end
  return month_num
end
