module Concerns::Findable

  def find_by_name(object_name)
    all.find do |object|
      object.name == object_name
    end
  end


end
