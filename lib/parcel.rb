class Parcel
  def initialize(weight, width, height, length)
    @weight = weight
    @width = width
    @height = height
    @length = length
  end

  def volume
    @width * @height * @length
  end

  def shipping_cost
    @cost = (self.volume * 0.01 + @weight)
  end
end


# Method #2
# Run: ruby lib/parcel.rb in terminal and hit Enter

print "Enter weight "
arg1 = gets.chomp

print "Enter width "
arg2 = gets.chomp

print "Enter length "
arg3 = gets.chomp

print "Enter height: "
arg4 = gets.chomp

test_parcel = Parcel.new(arg1.to_i, arg2.to_i, arg3.to_i, arg4.to_i)
test_parcel.volume
puts test_parcel.shipping_cost


# Method #1
# Run: ruby lib/parcel.rb 23 34 12 43

# arg1 = ARGV[0]

# arg2 = ARGV[1]

# arg3 = ARGV[2]

# arg4 = ARGV[3]

# test_parcel = Parcel.new(arg1.to_i, arg2.to_i, arg3.to_i, arg4.to_i)
# test_parcel.volume
# puts test_parcel.shipping_cost
