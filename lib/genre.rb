class Genre

  attr_accessor :name, :song

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
     @@all
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    songs = Song.all.select do |song|
      song.genre == self
    end
    songs.map do |genre|
      genre.artist
    end
  end

end
