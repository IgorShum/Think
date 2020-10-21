=begin
	Прямоугольный треугольник. 
	Программа запрашивает у пользователя 
	3 стороны треугольника и определяет, 
	является ли треугольник прямоугольным 
	(используя теорему Пифагора www-formula.ru), 
	равнобедренным (т.е. у него равны любые 2 стороны)
	или равносторонним (все 3 стороны равны) и выводит результат на экран. 
	Подсказка: чтобы воспользоваться теоремой Пифагора, нужно сначала найти 
	самую длинную сторону (гипотенуза) и сравнить ее значение в квадрате с 
	суммой квадратов двух остальных сторон. Если все 3 стороны равны, то 
	треугольник равнобедренный и равносторонний, но не прямоугольный.
=end
mass = []
p "Введите стороны треугольника. AB="
mass.push gets.chomp.to_f	# 5
p "BC="
mass.push gets.chomp.to_f	#5
p "AC="
mass.push gets.chomp.to_f	#10

gip = mass.max # гипотенуза
cat1, cat2 = mass.min(2)

if (gip == cat1 && gip == cat2)
	p "Равносторонний треугольник1"
else
	if gip**2 == (cat1**2 + cat2**2)
			p "Прямоугольный треугольник"
	else
		if (gip == cat1 || gip == cat2)
			p "Равнобедренный треугольник"
		else
			p "Неверно введены данные"
		end
	end
end
		