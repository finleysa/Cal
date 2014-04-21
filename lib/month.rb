def print_month (month, year, zeller)
  month_name = month

  first_day = zeller.find_first_day
  #SET SATURDAY TO 7
  first_day = 7 if first_day == 0
  days_in_month = zeller.days_in_month

  #PRINT TOP 2 ROWS
  row_length = 20
  display_month = "#{month_name} #{year}"
  empty = ((row_length - display_month.length - year.to_s.length + 2) / 2).floor

  i=0
  space = " "
  while i < empty.abs do
    space << " "
    i += 1
  end
  puts "#{space}#{month_name} #{year}"
  puts "Su Mo Tu We Th Fr Sa"

  #PRINT THE REST
  j=1
  dates = ""


  while j < first_day
    j += 1
    dates << "   "
  end

  line_count = 0
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
      puts "#{dates}"
      dates = ""
      line_count += 1
    end
    k += 1
  end

  #Make sure correct number of new lines added
  dates.strip!
  while line_count < 6 do
    dates << "\n"
    line_count += 1
  end
  print "#{dates}" if dates != ""
end
