require_relative 'zellers.rb'
require_relative 'month.rb'

if ARGV[0].length >= 3
  month = month_string(ARGV[0])
  year = ARGV[1].to_i
  zeller = Zellers.new(month, year)
elsif ARGV.length == 1
  year = ARGV[0].to_i
  zeller = Zellers.new(year)
elsif ARGV.length == 2
  month = ARGV[0].to_i
  year = ARGV[1].to_i
  zeller = Zellers.new(month, year)
else
  raise ArgumentError, 'too many arguments :('
end

#Print
if month
  month_name = find_month(month)

  first_day = zeller.find_first_day
  days_in_month = zeller.days_in_month
  puts "Month Name: #{month_name}, First Day: #{first_day}, Days in Month: #{days_in_month}"
  puts

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
  puts "#{space}#{month_name} #{year}#{space}"
  puts "Su Mo Tu We Th Fr Sa"
  
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
end
