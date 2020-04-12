class Song
  attr_accessor :name, :artist, :genre
  attr_writer :artist, :genre
  @@all = []

  def initialize(name, artist = "", genre = "")
    @name = name
    @artist = artist

    @genre = genre
  end

  def self.all
    @@all
  end

  def self.create(name)
    new_song = self.new(name)
    new_song.save
    new_song
  end

  def artist=(artist_object)
    artist_object.add_song(self)
  end

  def self.destroy_all
    @@all.clear
  end

  def save
    @@all << self
  end

end
