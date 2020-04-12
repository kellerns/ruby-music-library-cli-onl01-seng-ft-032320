class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def self.create(name)
    self.new(name)
    save
  end

  def self.destroy_all
    @@all.clear_all
  end

  def save
    @@all << self
  end

  def add_song(song)
    song.artist = self
  end

  def genres

  end


end
