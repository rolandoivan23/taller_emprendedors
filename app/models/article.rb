class Article < ActiveRecord::Base
  attr_accessible :department_id, :marca, :nombre, :precio_por_unidad_de_venta, :retail_unit_id, :stock
  belongs_to :department
  has_many_and_belongs_to :orders
end
