class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def self.create(name)
    new_artist = self.new(name)
    new_artist.save
    new_artist
  end

  def self.destroy_all
    @@all.clear
  end

  def save
    @@all << self
  end

  def add_song(song)
    if @songs.include?(song)
      song
    elsif song.artist == nil
      song.artist=(self)
      @songs << song
    end
  end

  def genres
    songs.map do |song|
      song.genre
    end
  end


end
