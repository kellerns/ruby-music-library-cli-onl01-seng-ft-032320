module Concerns::Findable

  def find_by_name(object_name)
    all.find do |object|
      object.name ==
  end


end
