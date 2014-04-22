require_relative "../../test_helper"

module HstoreData
  describe Serializer do
    describe "#serialize" do
      it "serializes a hash" do
        assert_serialize({a: 1}, {a: "1"})
        assert_serialize({a: 1, b: "hi"}, {a: "1", b: "\"hi\""})
        assert_serialize({a: {b: "hi"}}, {a: "{\"b\":\"hi\"}"})
      end

      def assert_serialize(data, expected)
        assert_equal Serializer.new(data).serialize, expected
      end
    end

    describe "#deserialize" do
      it "deserializes a hash" do
        assert_deserialize({a: "1"}, {a: 1})
        assert_deserialize({a: "1", b: "\"hi\""}, {a: 1, b: "hi"})
        assert_deserialize({a: "{\"b\":\"hi\"}"}, {a: {"b" => "hi"}})
      end

      def assert_deserialize(data, expected)
        assert_equal Serializer.new(data).deserialize, expected
      end
    end
  end
end
