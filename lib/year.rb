def year(year)
  dates = []
  for i in 1..12
    dates[i] = Zellers.new(i, year.to_i)
  end

  first_days = []
  month_days = []
  month_names = []
  for i in 1..12
    month_names[i] = find_month(i)
    first_days[i] = dates[i].find_first_day
    month_days[i] = dates[i].days_in_month
  end

  #PRINT TOP ROW
  total_row_length = 62
  row_length = 20

  #########
=begin
  j=1
  space = ""
  while j < first_day
    j += 1
    space << "   "
  end
=end
  #########



  k=true
  while k == true
    for i in 1..12
      empty = ((row_length - month_names[i].length - year.to_s.length + 2) / 2).floor
      j=0
      space = " "
      while j < empty.abs do
        space << " "
        j += 1
      end

      ## Shit Gets Weird Here ##
      date_strings = []
      while date_strings.length < 24
        if date_string.length % == 1 or date_string.length % 7 == 0
          j=1
          space = ""
          while j < first_day
            j += 1
            space << "   "
          end
        end

        while k <= days_in_month do
          space << " #{k} " if k.to_s.length == 1
          space << "#{k} " if k.to_s.length == 2
          if space.length >= 20
            date_string[k] = "#{space}"
            space = ""
            k += 1
          else
          end
        end


        
      end
      ## End ##

      if i % 3 == 0
        puts "#{space}#{month_names[i]} #{space}"
        puts "Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa"
=begin
        j=1
        space = ""
        while j < first_day
          j += 1
          space << "   "
        end

        date_string = []
        k=1
        while k <= days_in_month do
          space << " #{k} " if k.to_s.length == 1
          space << "#{k} " if k.to_s.length == 2
          if space.length >= 20
            date_string << "#{space}"
            space = ""
          end
          k += 1
        end
=end
      else
        print "#{space}#{month_names[i]} #{space} "
      end
    end
    
    k=false
  end
end

