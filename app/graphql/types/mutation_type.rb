module Types
  class MutationType < BaseObject
    field :create_user, mutation: Mutations::CreateUser
    field :create_product, mutation: Mutations::CreateProduct
  end
end