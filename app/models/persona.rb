class Persona < ApplicationRecord
  validates :nombre, :apellido, :fecha_nacimiento, :nroDNI, presence: true
  validates :nroDNI,  numericality: {greater_than: 0}
  validates :nroDNI, uniqueness: true
end
