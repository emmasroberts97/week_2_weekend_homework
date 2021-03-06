class Rooms

  attr_reader :name, :songs, :guests, :waiting_list

  def initialize(name)
    @name = name
    @songs = []
    @guests = []
    @waiting_list = []
    @money_made = 0
  end

  def get_money_made()
    return @money_made
  end

  def check_room_count()
    return @guests.count
  end

  def check_song_count()
    return @songs.count
  end

  def check_waiting_list_count()
    return @waiting_list.count
  end

  def check_in_guests(customer)
    if check_room_count() < 2
      customer.pay_entry_fee()
      collect_entry_fee()
      @guests.push(customer)
    elsif
      @waiting_list.push(customer)
    end
  end

  def check_out_all_guests()
    @guests.clear()
  end

  def check_out_guest(customer)
    for guest in @guests
      if guest == customer
        @guests.delete(customer)
      end
    end
  end

  def add_song(song)
    @songs.push(song)
  end

  def collect_entry_fee()
    @money_made += 10
  end

  def customer_buys_drink(customer, drink)
    if customer.get_money() >= drink.price
      customer.buy_drink(drink)
      @money_made += drink.price
    else
      return "You don't have enough money!"
    end
  end

end
