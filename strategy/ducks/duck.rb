Dir["./duck_behavior/*/*.rb"].each {|file| require file }


class Duck
  include FlyBehavior
  include QuackBehavior

  # dynamically changing behavior of quack and fly
  attr_accessor :fly_behavior, :quack_behavior

  def initialize
    raise 'This is interface'
  end

  def swim
  end

  def display
  end

  def perform_fly
    @fly_behavior.fly
  end

  def perform_quack
    @quack_behavior.quack
  end
end
