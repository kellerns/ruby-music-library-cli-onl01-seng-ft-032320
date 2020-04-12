class MusicImporter

  def initialize(path)
    @path = path
  end

  def files
    @file = Dir.glob("#{@path}/*.mp3")
    @file.map do |file_str|
      file_str.gsub("#{@path}/", "")
    end
  end


end
