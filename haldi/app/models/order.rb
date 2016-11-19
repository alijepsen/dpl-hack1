class Order < ApplicationRecord
  validates_presence_of :main_dish

  belongs_to :restaurant
  has_one :delivery, dependent: :destroy
end
