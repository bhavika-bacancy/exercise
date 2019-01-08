class Sum
	def calculate_sum
		sum=0
		print "Enter number :"
		number = gets.to_i
		(1...number).each do |i|
			if i % 3 == 0 or i % 5 == 0
				sum= sum + i	
			end
		end
		print "Sum is :: #{sum}\n"
	end
end
s1 = Sum.new
s1.calculate_sum