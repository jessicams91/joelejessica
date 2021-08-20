class Guest < ActiveRecord::Base
  SEM_ALOJAMENTO = 0
  DOMINGO = 1
  SEXTA_DOMINGO = 2
  scope :confirmados, -> {where("guests is not NULL")}
end
