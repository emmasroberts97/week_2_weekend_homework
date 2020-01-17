class Guests

  attr_accessor :name, :favourite_song

  def initialize(name, favourite_song, money)
    @name = name
    @favourite_song = favourite_song
    @money = money
  end

  def pay_entry_fee(value)
    @money -= value
  end

  def get_money()
    return @money
  end 
end
