module Types
  class MutationType < Types::BaseObject
    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    field :post_photo, Boolean, null: false do
      argument :name, String, required: true
      argument :description, String, required: false
    end

    def test_field
      "Hello World"
    end

    def post_photo(name:, description: nil)
      Photo.create!(name: name, description: description)
      true
    end
  end
end
