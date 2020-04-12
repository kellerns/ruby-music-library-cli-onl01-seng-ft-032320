class Genre
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
    new_genre = self.new(name)
    new_genre.save
    new_genre
  end

  def self.destroy_all
    @@all.clear
  end

  def save
    @@all << self
  end

  def artists
    songs.map do |song|
      song.artist
    end
  end

  def add_song(song)
    if @songs.include?(song)
      song
    elsif song.genre == nil
      song.genre=(self)
      @songs << song
    end
  end



end
