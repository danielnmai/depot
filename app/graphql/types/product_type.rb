module Types
  class ProductType < Types::BaseObject
    description 'A Book Product'
    field :id, ID, null: false
    field :title, String, null: false
    field :description, String
    field :image_url, String
    field :price, Float
  end
end
