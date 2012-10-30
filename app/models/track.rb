class Track < ActiveRecord::Base
  attr_accessible :name, :price, :album_id, :category_id

  belongs_to :album
  belongs_to :category
end
