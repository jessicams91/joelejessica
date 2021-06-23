class Gift < ActiveRecord::Base
  has_many :purchases
  scope :ativos, -> {where("remaining_quota > 0")}
  scope :vendidos, -> {where("remaining_quota == 0")}
end
