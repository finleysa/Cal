def print_month (month, year, zeller)
  if month.class == fixnum
    month_name = find_month(month)
  else
    month_name = month
  end

  first_day = zeller.find_first_day
  #SET SATURDAY TO 7
  first_day = 7 if first_day == 0
  days_in_month = zeller.days_in_month

  #PRINT TOP 2 ROWS
  row_length = 20
  display_month = "#{month_name}"
  empty = ((row_length - display_month.length - year.to_s.length + 2) / 2).floor

  i=0
  space = " "
  while i < empty.abs do
    space << " "
    i += 1
  end
  date_array = []
  date_array.push "#{space}#{month_name}#{space}"
  date_array.push "Su Mo Tu We Th Fr Sa"

  #PRINT THE REST
  j=1
  dates = ""


  while j < first_day
    j += 1
    dates << "   "
  end

  line_count = 1
  k=1
  while  k <= days_in_month do
    if dates.length <=17
      dates << " #{k} " if k.to_s.length == 1
      dates << "#{k} " if k.to_s.length == 2
    else
      dates << " #{k}" if k.to_s.length == 1
      dates << "#{k}" if k.to_s.length == 2
    end
    if dates.length >= 20
      date_array.push("#{dates}")
      dates = ""
      line_count += 1
    end
    k += 1
  end

  dates.rstrip!
  #Make sure correct number of new lines added
  date_array.push(dates)
  while line_count < 6 do
    date_array.push("\n")
    line_count += 1
  end
  return date_array
end
