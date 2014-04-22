module HstoreData
  class Serializer < Struct.new(:data)
    def serialize
      sanitize { |value| value.respond_to?(:to_json) ? value.to_json : value }
    end

    def deserialize
      sanitize { |value| JSON.load(value) rescue value }
    end

    private

    def sanitize
      hash = {}
      data.each do |key, value|
        hash[key] = yield(value)
      end if data
      hash
    end
  end
end
