class Client < ActiveRecord::Base
  attr_accessible :apellido_materno, :apellido_paterno, :calle, :ciudad_id, :email, :estado_id, :nombre, :numero_exterior, :numero_interior
end
