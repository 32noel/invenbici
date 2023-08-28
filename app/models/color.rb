class Color < ApplicationRecord
  # Relación con ParteColor y Partes a través de ParteColor
  has_many :parte_colors
  has_many :partes, through: :parte_colors
end