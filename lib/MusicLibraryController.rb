class MusicLibraryController

  def initialize(path='./db/mp3s/')
    @path = path
    new_importer = MusicImporter.new(@path)
    new_importer.import
  end

  def call

  end



end
