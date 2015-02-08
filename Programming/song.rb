class SongList
  MAX_TIME = 5*60   # 5 minutes
  def SongList.is_too_long(song)
    return song.duration > MAX_TIME
  end
end

class Song
  @@plays = 0
  attr_reader :name, :artist, :duration
  attr_writer :duration

  def initialize(name, artist, duration)
    @name = name
    @artist = artist
    @duration = duration
    @plays = 0
  end

  # 定义方法来访问三个实例变量
  def name
    @name
  end

  def artist
    @artist
  end

  def duration
    @duration
  end

  def to_s
    "Song: #@name -- #@artist (#@duration)"
  end

  def duration_in_minutes
    @duration/60.0 # force floating point
  end

  def duration_in_minutes=(new_duration)
    @duration = (new_duration*60).to_i
  end

  def play
    @plays += 1 # same as @plays = @plays + 1
    @@plays += 1
    "This song: #@plays plays. Total #@@plays plays."
  end
end

class MyLogger
  private_class_method :new
  @@logger = nil
  def MyLogger.create
    @@logger = new unless @@logger
    @@logger
  end
end

class KaraoKeSong < Song
  def initialize(name,artist, duration, lyrics)
    super(name, artist,duration)
    @lyrics = lyrics
  end

  # Fromat ourselves as a string by appending
  # our lyrics to our parent's # to_s value.
  def to_s
    super + " [#@lyrics]"
  end
end

song = KaraoKeSong.new("My Way", "Sinatra", 225, "And now, the.....")
puts song.to_s

song = Song.new("Bicyclops", "Fleck", 260)
puts song.artist
puts song.name
puts song.duration
song.duration = 247
puts song.duration
puts song.duration_in_minutes
puts song.duration_in_minutes = 4.2
puts song.duration_in_minutes

s1 = Song.new("Song1", "Artist1", 234) # test songs
s2 = Song.new("Song2", "Artist2", 345)
puts s1.play
puts s2.play
puts s1.play
puts s1.play

song1 = Song.new("Bicyclops", "Fleck", 260)
puts SongList.is_too_long(song1)
song2 = Song.new("The Calling", "Santana", 468)
puts  SongList.is_too_long(song2)

puts MyLogger.create.object_id
puts MyLogger.create.object_id