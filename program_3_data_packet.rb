require "json"

class DataPacket
  attr_reader :array_data, :hash_data

  # created custom setter for array  data
  def array_data=(array_input)
    @array_data = array_input.split(",").map(&:to_i)
  end

  # created custom setter for hash data
  def hash_data=(hash_input)
    @hash_data = JSON.parse(hash_input)
  end

  # # created custom getter for array  data
  # def array_data
  #   @array_data
  # end
  #
  # # created custom setter for array  data
  # def hash_data
  #   @hash_data
  # end
end

d = DataPacket.new
d.array_data = "1,2,3,4"
d.hash_data = '{"a": 1, "b": 2, "c": {"d": 3, "e": 4}}'
p d
p d.array_data
p d.hash_data
d.array_data = "[1,2,3,4,5,6,7,8,9,10]"
p d
