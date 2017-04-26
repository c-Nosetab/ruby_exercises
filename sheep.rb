
class Sheep
  attr_reader :name

  @@count = 0

  def initialize(input_options)
    @name = input_options[:name]
    @@count += 1
  end

  def self.count
    puts @@count
  end

  def bleet
    puts "Bahhhhh"
  end

  def self.grass
    puts "Yum!"
  end

end

Sheep.count

bob = Sheep.new(name: "Bob")
sue = Sheep.new(name: "Sue")

Sheep.count

bob.bleet

Sheep.grass

puts bob.name
puts sue.name