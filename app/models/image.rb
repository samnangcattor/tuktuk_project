class Image < ActiveRecord::Base
  belongs_to :product

  enum slide_show: [:deactivate, :activate]

  delegate :id, to: :product, prefix: true, allow_nil: true
  delegate :name, to: :product, prefix: true, allow_nil: true
  delegate :price, to: :product, prefix: true, allow_nil: true
  delegate :discount, to: :product, prefix: true, allow_nil: true
  delegate :description, to: :product, prefix: true, allow_nil: true
end
