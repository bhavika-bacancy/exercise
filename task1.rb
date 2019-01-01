$grand_total=0
class Shopping
	def initialize
		print "Enter your name:"
		@@name=gets
		@tv=10000
		@wash_machine=15000
		@ac=1500
		@shirt=1000
		@jeans=2000
		@tshirt=500
		@sofa=25000
		@bed=30000
		@cupboard=15000
		@@total1=0
		@@total2=0
		@@total3=0
		@categ=Array.new()
		@item=Array.new()
		@quan=Array.new()
		@price=Array.new()
		@i=0
		@j=0
		@k=0
		@l=0
	end
	def category
		print "\nSelect a categoty.\n1.electronics \n2.clothing \n3.Furniture \n"
		@category=gets.chomp.to_i
		case @category
		when 1
			diplay_electronics
		when 2
			display_clothing
		when 3
			display_furniture
		else
			print "Invalid input!"
		end		
	end
	def select_choice
		puts "Enter your choice"
		@c=gets.chomp.to_i
	end
	def select_quantity
		puts "Enter Quantity"
		@q=gets.chomp.to_i
	end
	def total_bill
		$grand_total=@@total1+@@total2+@@total3
		print "Your Total Bill is #$grand_total\n"
	end
	def shop_continue
		print "Want to Continue shopping?(y/n)"
		@shop=gets.chomp
		if(@shop=='y')
			category
		elsif(@shop=='n')
		print "\nThank You for shopping #@@name\n"
		print "=========================Invoice=========================\n"
		print "Category\tItem\t\tPrice\tQuantity\n"
				for i in 0..@categ.length
					puts "#{@categ[i]}\t#{@item[i]}\t\t#{@price[i]}\t#{@quan[i]}\n"
				end
				total_bill
		else
			print "invalid input"
		end
	end
	def diplay_electronics
		@categ[@i]='Electronics'
		@i=@i+1
		puts "Electronics items are:\n"
		puts "1.Tv price:#@tv"
		puts "2.Washing Machine price:#@wash_machine"
		puts "3.Air Conditioner price:#@ac"
		@c=select_choice.to_i
		@q=select_quantity
		case @c
		when 1
			@item[@k]='TV'
			@k=@k+1
			@@total1=(@tv*@q)+@@total1
			@price[@l]=@tv
			@l=@l+1
		when 2
			@item[@k]='Washing'
			@k=@k+1
			@@total2=(@wash_machine*@q)+@@total2
			@price[@l]=@wash_machine
			@l=@l+1
		when 3
			@item[@k]='AC'
			@k=@k+1
			@@total3=(@ac*@q)+@@total3
			@price[@l]=@ac
			@l=@l+1
		else
			print "Invalid Choice"
		end
		@quan[@j]=@q
		@j=@j+1
		@total=@@total1 + @@total2 + @@total3
		print "total bill  #@total\n"
		shop_continue
	end		
	def display_clothing
		@categ[@i]='Clothing'
		@i=@i+1
		puts "Clothings item are:\n"
		puts "1.Shirt price:#@shirt"
		puts "2.Jeans price:#@jeans"
		puts "3.Tshirt price:#@tshirt"
		@c=select_choice.to_i
		@q=select_quantity
		case @c
		when 1
			@item[@k]='Shirt'
			@k=@k+1
			@@total1=(@shirt*@q)+@@total1
			@price[@l]=@shirt
			@l=@l+1
		when 2
			@item[@k]="Jeans"
			@k=@k+1
			@@total2=(@jeans*@q)+@@total2
			@price[@l]=@jeans
			@l=@l+1
		when 3
			@item[@k]='T-shirt'
			@k=@k+1
			@@total3=(@tshirt*@q)+@@total3
			@price[@l]=@tshirt
			@l=@l+1
		else
			print "Invalid Choice"
		end
		@quan[@j]=@q
		@j=@j+1
		@total=@@total1 + @@total2 + @@total3
		print "total bill  #@total\n"
		shop_continue
	end

	def display_furniture
		@categ[@i]='Furniture'
		@i=@i+1
		puts "Furniture items are:\n"
		puts "1.Sofa price:#@sofa"
		puts "2.Bed price:#@bed"
		puts "3.Cupboard price:#@cupboard"
		@c=select_choice.to_i
		@q=select_quantity
		case @c
		when 1
			@item[@k]='Sofa'
			@k=@k+1
			@@total1=(@sofa*@q)+@@total1
			@price[@l]=@sofa
			@l=@l+1
		when 2
			@item[@k]='Bed'
			@k=@k+1
			@@total2=(@bed*@q)+@@total2
			@price[@l]=@bed
			@l=@l+1
		when 3
			@item[@k]='Cupboard'
			@k=@k+1
			@@total3=(@cupboard*@q)+@@total3
			@price[@l]=@cupboard
			@l=@l+1
		else
			print "Invalid Choice"
		end
		@quan[@j]=@q
		@j=@j+1
		@total=@@total1 + @@total2 + @@total3
		print "total bill  #@total\n"
		shop_continue
	end
end
s1=Shopping.new
s1.category