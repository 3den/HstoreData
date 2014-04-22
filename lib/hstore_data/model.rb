module HstoreData
  module Model
    def data=(value)
      super Serializer.new(value).serialize
    end

    def data
      Serializer.new(super).deserialize
    end
  end
end
