class Restaurant < ApplicationRecord
  validates_presence_of :name, :city, :state, :postal, :latitude, :longitude

  has_one :order, dependent: :destroy
end
