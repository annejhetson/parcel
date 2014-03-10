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

test_parcel = Parcel.new(1, 12, 24, 5)
test_parcel.volume
# puts test_parcel.volume
puts test_parcel.shipping_cost
