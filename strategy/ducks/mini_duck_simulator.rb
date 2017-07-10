# Паттер СТРАТЕГИЯ определяет семейство алгоритмов,
# инкапсулирует каждый их ниъ и обеспечивает их взаимозаменяемость.
# Он позволяет модифицировать алгоритмы
# независимо от их использования на стороне клиента

require './duck'
Dir["./ducks/*.rb"].each {|file| require file }

class MiniDuckSimulator
  def self.mallard_duck
    mallard_duck = MallardDuck.new
    mallard_duck.display
    mallard_duck.perform_fly
    mallard_duck.perform_quack
  end

  def self.model_duck
    model_duck = ModelDuck.new
    model_duck.perform_fly
    model_duck.fly_behavior = FlyBehavior::FlyRocketPowered.new
    model_duck.perform_fly
  end
end

MiniDuckSimulator.mallard_duck
MiniDuckSimulator.model_duck
