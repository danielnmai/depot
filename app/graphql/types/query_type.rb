module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.
    field :product, ProductType, 'Find a product by ID' do
      argument :id, ID
    end

    field :products, [ProductType], 'Find all products', null: true

    def product(id:)
      Product.find(id)
    end

    def products
      Product.all
    end
  end
end
