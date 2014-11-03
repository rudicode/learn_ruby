class Changer
  def self.make_change money
    coin_values = [25,10,5,1]
    result = []

    coin_values.each do|coin|
      how_many_coins = money / coin
      how_many_coins.times do |x|
        result << coin
        money -= coin
      end
    end

    
    result
  end
end