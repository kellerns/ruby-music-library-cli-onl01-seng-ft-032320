def Song
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    save
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
