module Types
  class MutationType < BaseObject
    field :create_product, mutation: Mutations::CreateProduct
  end
end
