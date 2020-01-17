class Rooms

  attr_accessor :songs, :guests

  def initialize()
    @songs = []
    @guests = []
  end

  def check_room_count()
    return @guests.count
  end

  def check_song_count()
    return @songs.count
  end

  def check_in_guests(customers)
    @guests.push(customers)
    @guests.flatten!
    return @guests.count
  end

  def check_out_guests()
    @guests.clear()
  end

  def add_song(song)
    @songs.push(song)
  end

end
