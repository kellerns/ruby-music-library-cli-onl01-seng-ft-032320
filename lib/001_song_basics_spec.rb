class Song
  attr_accessor :name, :artist, :genre
  attr_writer :artist, :genre
  @@all = []

  def initialize(name, artist = nil, genre = nil)
    @name = name
    if artist != nil
      self.artist=(artist)
    elsif genre != nil
      self.genre=(genre)
    end
  end

  def self.all
    @@all
  end

  def self.create(name)
    new_song = self.new(name)
    new_song.save
    new_song
  end

  def self.artist=(artist_object)
    @artist = artist_object.add_song(self)
    @artist
  end

  # def self.genre=(genre_object)
  #   genre_object.add_song(self)
  # end

  def self.destroy_all
    @@all.clear
  end

  def save
    @@all << self
  end

end
