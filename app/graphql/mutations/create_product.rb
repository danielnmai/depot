module Mutations
  class CreateProduct < BaseMutation
    null true
    argument :title, String, required: true
    argument :description, String, required: true
    argument :image_url, String, required: true
    argument :price, Float, required: true

    type Types::ProductType

    def resolve(title:, description:, image_url:, price:)
      Product.create!(
        title: title,
        description: description,
        image_url: image_url,
        price: price)
    end
  end
end
