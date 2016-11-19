class Delivery < ApplicationRecord
  validates_presence_of :item, :total

  belongs_to :order
end
