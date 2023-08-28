class Brand < ApplicationRecord
  # Relación con ParteBrand y Partes a través de ParteBrand
  has_many :parte_brands
  has_many :partes, through: :parte_brands
end
