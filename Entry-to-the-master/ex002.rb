class Pet
  attr_accessor :name, :age, :gender, :color
end

class Dog < Pet
  def bark
    puts "Woof!"
  end
end

class Snake < Pet
  attr_accessor :length
end

class Cat < Pet
end

