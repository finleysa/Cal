class Zellers

  def initialize(*args)
    if args.length == 1
      year = args
    else
      month = args[0]
      year = args[1]
    end
    month = month.to_s.to_i(10)
    @month = month
    @year = year
  end

  def find_first_day
    if @month < 3
      if @month == 1
      month = 13
      year = @year - 1
      end
      if @month == 2
      month = 14
      year = @year - 1
      end
    else
    month = @month
    year = @year
    end

    century = (year / 100).floor
    century_year = (year % 100)
    formula = (1 + (13 * (month +1)/5) + century_year + (century_year / 4) + (century / 4) + 5 * century) % 7
    return formula
  end

  def days_in_month
    thirty_one_days = [1, 3, 5, 7, 8, 10, 12]
    thirty_days = [4, 6, 9, 11]
    if thirty_one_days.include?(@month)
      return 31
    elsif thirty_days.include?(@month)
      return 30
    else
      puts
      puts @year
      if (@year % 400 == 0) or (@year % 4 == 0 and @year % 100 != 0)
        return 29
      else
        return 28
      end
    end
  end

end
