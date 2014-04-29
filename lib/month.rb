def print_month (month, year, zeller)
  first_day = zeller.find_first_day
  ## SET SATURDAY TO 7
  first_day = 7 if first_day == 0
  days_in_month = zeller.days_in_month

  ## PRINT TOP 2 ROWS
  display_month = "#{month}"
  date_array = []
  date_array.push(month.center(20))
  date_array.push "Su Mo Tu We Th Fr Sa"

  ## PRINT THE REST
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
  while dates.length < 20
    dates << " "
  end

  ## Make sure correct number of new lines added
  date_array.push(dates)
  while line_count < 6 do
    date_array.push("                    ")
    line_count += 1
  end
  return date_array
end
