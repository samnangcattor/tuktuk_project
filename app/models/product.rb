class Product < ActiveRecord::Base
  FILTERS =  Settings.filters.map &:last
  SEX = Settings.sex.map &:first
  PRICE_RANGE = 10..100

  enum sex: SEX

  has_many :images
  has_many :carts
  belongs_to :brand
  belongs_to :type
  belongs_to :media_art
end
