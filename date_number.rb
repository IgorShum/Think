#Заданы три числа, которые обозначают число, месяц, год (запрашиваем у пользователя).
# Найти порядковый номер даты, начиная отсчет с начала года учитывая високосный год
#
# Год високосный, если он делится на четыре без остатка, но если он делится на 100 без
# остатка, это не високосный год. Однако, если он делится без остатка на 400,
# это високосный год. Таким образом, 2000 г. является особым високосным годом,
# который бывает лишь раз в 400 лет.

def intercalary_year year
  return 0 if year <= 0
  return true if year == 2000
  if year % 4 == 0
    if year % 100 != 0
      if year % 400 != 0
        puts "#{year} - Високосный год"  # Високосный
      end
    end
  else
    puts "#{year} - обычный"
  end
end
#puts "Введите год"
#year = gets.chomp.to_i

(2000..3000).each do |yr|
  intercalary_year yr
end
#intercalary_year(year)
