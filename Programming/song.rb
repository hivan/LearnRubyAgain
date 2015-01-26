class Song
  def initialize(name, artist, duration)
    @name = name
    @artist = artist
    @duration = duration
  end

  def to_s
    "Song: #@name -- #@artist (#@duration)"
  end
end

class KaraoKeSong < Song
  def initialize(name,artist, duration, lyrics)
    super(name, artist,duration)
    @lyrics = lyrics
  end
end

song = KaraoKeSong.new("My Way", "Sinatra", 225, "And now, the.....")
puts song.to_s
