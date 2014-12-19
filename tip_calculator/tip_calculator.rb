
# puts "How much is bill?"
# bill = gets.to_r;
# tip_percent = 0.20
# tip = bill * tip_percent
# total = bill + tip
# puts "The bill is $#{total}"

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

# def test_tip
# 	puts "$5 Bill with a tip of 5% is $5.25" 
# 	puts tip_calculate(5,5) == 5.25
# 	puts "$5 Bill with a tip of nil is $5.00" 
# 	puts tip_calculate(5,nil) == 5.00
# 	puts "$5 Bill with a tip of 'awesome' is $10.00" 
# 	puts tip_calculate(5,'awesome') == 10.00

# end

# test_tip

# puts tip_calculate(5,5)
