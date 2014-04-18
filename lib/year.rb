def year(year)
  dates = []
  for i in 1..12
    dates << Zellers.new(i, year.to_i)
  end

  first_days = []
  month_days = []
  j = 0
  dates.each do |i|
    puts "#{i.days_in_month}"
    first_days << i.find_first_day
    month_days << i.month_days
  end

  #PRINT TOP 2 ROWS
  row_length = 20
  display_month = "#{month_name} #{year}"
  (1..12).each do |i|
    empty = ((row_length - display_month.length - year.to_s.length + 2) / 2).floor
  end

  i=0
  space = " "
  while i < empty.abs do
    space << " "
    i += 1
  end
  puts "#{space}#{month_name} #{year}#{space}"
  puts "Su Mo Tu We Th Fr Sa  "

=begin

  #PRINT THE REST
  j=1
  space = ""
  while j < first_day
    j += 1
    space << "   "
  end

  k=1
  while  k <= days_in_month do
    space << " #{k} " if k.to_s.length == 1
    space << "#{k} " if k.to_s.length == 2
    if space.length >= 20
      puts "#{space}"
      space = ""
    end
    k += 1
  end

  puts "#{space}"
=end
end

