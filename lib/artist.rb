class Artist

  @@all = []

  attr_accessor :name, :songs, :genres

  def initialize(name)
    @name = name
    @songs = []
    @genres = []

    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    s = Song.new(name, self, genre)
  end

end
