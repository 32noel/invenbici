class Parte < ApplicationRecord
  belongs_to :color
  belongs_to :brand
  # Relación con ParteColor y Colores a través de ParteColor
  has_many :parte_colors
  has_many :colors, through: :parte_colors

  # Relación con ParteBrand y Marcas a través de ParteBrand
  has_many :parte_brands
  has_many :brands, through: :parte_brands

  def obtener_colores_y_marcas_asociadas
    colores_asociados = colors
    marcas_asociadas = brands
    { colores: colores_asociados, marcas: marcas_asociadas }
  end

end