module TipCalculatorMethod
	def tip_calculate(bill, percent)
	case percent
	when 'awesome'
		tip_percent = 1
	else
		tip_percent = percent.to_f / 100
	end

tip = bill.to_f * tip_percent
total = bill + tip
end
end