class Product < ActiveRecord::Base
  has_many :images
  belongs_to :brand
  belongs_to :type
  belongs_to :media_art

  FILTERS =  Settings.filters.map &:last
end
