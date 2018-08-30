class Genre

  require_relative './song'
  require_relative './artist'

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
      song.genre == self
    end
  end

  def artists
    self.songs.map do |song|
      song.artist
    end
  end

  def self.all
    @@all
  end

end
