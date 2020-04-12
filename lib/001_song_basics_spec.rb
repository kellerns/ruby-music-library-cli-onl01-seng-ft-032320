def Song
  attr_accessor :name, :artist, :genre

  @@all = []

  def initialize(name, artist = "")
    @name = name
    @artist = artist
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

end
