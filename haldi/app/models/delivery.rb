class Delivery < ApplicationRecord
  validates_presence_of :name, :street, :city, :state, :postal, :payment_type

  belongs_to :order
end
