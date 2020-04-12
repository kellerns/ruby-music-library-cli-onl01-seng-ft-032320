module Concerns::Findable

  def find_by_name(object_name)
    all.find do |object|
      object.name == object_name
    end
  end

  def find_or_create_by_name(object_name)
    if self.find_by_name(song_name)
      self.find_by_name(song_name)
    else
      song = self.create(song_name)
    end
  end

end
