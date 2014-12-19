module TestTipCalculator
	def test_tip
	puts "$5 Bill with a tip of 5% is $5.25" 
	puts tip_calculate(5,5) == 5.25
	puts "$5 Bill with a tip of nil is $5.00" 
	puts tip_calculate(5,nil) == 5.00
	puts "$5 Bill with a tip of 'awesome' is $10.00" 
	puts tip_calculate(5,'awesome') == 10.00

end