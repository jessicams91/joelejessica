class Guest < ActiveRecord::Base
  SEM_ALOJAMENTO = 0
  DOMINGO = 1
  SEXTA_DOMINGO = 2
  scope :confirmados, -> {where("created_at != updated_at")}
end
