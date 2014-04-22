module HstoreData::Model
  def data=(value)
    super HstoreSerializer.new(value).serialize
  end

  def data
    HstoreSerializer.new(super).deserialize
  end
end
