class OrderStatus < ActiveRecord::Base
  attr_accessible :descripcion, :nombreabout
  has_many :orders
end
