module Tracking
  def create(name)
    object = new(name)
    instances.push(object)
    object
  end

  def instances
    @instances ||= []
  end

  def find(name)
    instances.find do |instance|
      instance.name == name
    end
  end
end

class Customer
  extend Tracking

  attr_accessor :name
  def initialize(name)
    @name = name
  end

  def to_s
    "[#{@name}]"
  end
end

puts format('Customer.instances: %s', Customer.instances.inspect)
puts format('Customer.create: %s', Customer.create('Jason'))
puts format('Customer.create: %s', Customer.create('Kenneth'))
puts format('Customer.instances: %s', Customer.instances.inspect)
puts format("Customer.find('Jason'): %s", Customer.find('Jason'))
puts format("Customer.find('Mike'): %s", Customer.find('Mike'))

# class Polygon
#   def sides
#     sides = 10
#   end
# end

# p Polygon.sides

# class Polygon
#   attr_accessor :sides
# #   class << self
# #     attr_accessor :sides
# #   end
#   @sides = 8
# end

# puts Polygon.new.sides.inspect
