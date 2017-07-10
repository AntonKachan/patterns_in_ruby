class ModelDuck < Duck
  def initialize
    @fly_behavior = FlyNoWay.new
    @quack_behavior = Quack.new
  end

  def display
    puts 'I am a model duck'
  end
end
