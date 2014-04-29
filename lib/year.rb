def print_year(year, jan_mar, apr_jun, jul_sep, oct_dec)
  year_string = year.to_s
  print_year = "#{year.to_s.center(64)}"
  print_year[0] = ""
  print_year.rstrip!
  print "#{print_year}\n\n"

  ## Remove white spaces from the end of the strings
  for i in 0..7
    jan_mar[2][i].rstrip!
    apr_jun[2][i].rstrip!
    jul_sep[2][i].rstrip!
    oct_dec[2][i].rstrip!
  end

  ## Print months
  8.times { |i| puts "#{jan_mar[0][i]}  #{jan_mar[1][i]}  #{jan_mar[2][i]}" }
  8.times { |i| puts "#{apr_jun[0][i]}  #{apr_jun[1][i]}  #{apr_jun[2][i]}" }
  8.times { |i| puts "#{jul_sep[0][i]}  #{jul_sep[1][i]}  #{jul_sep[2][i]}" }
  8.times { |i| puts "#{oct_dec[0][i]}  #{oct_dec[1][i]}  #{oct_dec[2][i]}" }
end
