class MallardDuck < Duck
  def initialize
    @fly_behavior = FlyWithWings.new
    @quack_behavior = Quack.new
  end

  def display
    puts "I'm a real Mallard duck"
  end
end
