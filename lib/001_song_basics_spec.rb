class Song
  attr_accessor :name, :artist, :genre

  @@all = []

  def initialize(name, artist=nil, genre=nil)
    @name = name
    if artist
      self.artist = artist
      artist.songs << self
    end
    if genre
      self.genre = genre
      genre.songs << self
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

  def artist=(artist_object)
    if @artist == nil
      @artist = artist_object
    else
      @artist = @artist
    end

    if self.artist != nil
      @artist.add_song(self)
    end

    @artist
  end

  def genre=(genre_object)
    if @genre == nil
      @genre = genre_object
    else
      @genre = @genre
    end

    if self.genre != nil
      @genre.add_song(self)
    end

    @genre
  end

  def self.find_by_name(song_name)
    @@all.collect do |song|
      song.name == song_name
    end
  end













  def self.destroy_all
    @@all.clear
  end

  def save
    @@all << self
  end

end
