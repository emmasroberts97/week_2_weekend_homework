class Rooms

  attr_accessor :songs, :guests, :waiting_list

  def initialize()
    @songs = []
    @guests = []
    @waiting_list = []
    @money_made = 0
  end

  def check_room_count()
    return @guests.count
  end

  def check_song_count()
    return @songs.count
  end

  def check_waiting_list()
    return @waiting_list.count
  end

  def collect_entry_fee()
    @money_made += 10
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

  def check_out_guests()
    @guests.clear()
  end

  def add_song(song)
    @songs.push(song)
  end

  def get_money_made()
    return @money_made
  end

end
