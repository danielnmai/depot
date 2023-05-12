require 'test_helper'

class Mutations::CreateProductTest < ActiveSupport::TestCase
  def perform(user: nil, **args)
    Mutations::CreateProduct.new(object: nil, field: nil, context: {}).resolve(**args)
  end

  test 'create a new product' do
    link = perform(
      title: 'Test title',
      description: 'Test description',
      image_url: '7apps.jpg',
      price: 9.99
    )
    assert link.persisted?
    assert_equal link.description, 'Test description'
    assert_equal link.price, 9.99
  end
end