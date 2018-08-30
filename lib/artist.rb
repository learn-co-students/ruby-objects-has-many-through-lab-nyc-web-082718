class Artist

  require_relative './song'
  require_relative './genre'

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name,genre)
    Song.new(name,self,genre)
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    self.songs.map {|song| song.genre}
  end

  def self.all
    @@all
  end

end
