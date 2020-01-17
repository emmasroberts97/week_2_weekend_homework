class Guests

  attr_accessor :name, :favourite_song

  def initialize(name, song, money)
    @name = name
    @favourite_song = song
    @money = money
  end

  def pay_entry_fee()
    @money -= 10
  end

  def buy_drink(drink)
    @money -= drink.price
  end

  def get_money()
    return @money
  end

  def customer_woohoo(room)
    for song in room.songs
      if @favourite_song == song.name
        return "Woohoo!"
      elsif @favourite_song != song.name
        return "Boohoo!"
      end
    end
  end

end
