module Fetcher
  def self.included(klass)
    attr_accessor :fetch_count
  end

  def fetch(item)
    @fetch_count ||= 0
    @fetch_count += 1
    puts "[#{@name}, #{fetch_count}] I'll bring that #{item} right back!"
  end
end

class Dog
  include Fetcher
  def initialize(name)
    @name = name
    @fetch_count = 0
  end
end

class Cat
  include Fetcher
  def initialize(name)
    @name = name
  end
end

dog = Dog.new('Fido')
dog.fetch('ball')
dog.fetch('Dongle')

cat = Cat.new('Garfield')
cat.fetch('laser pointer')
cat.fetch('Turin pointer')
