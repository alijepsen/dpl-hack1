class Portal < ApplicationRecord
  validates_presence_of :title, :text

  def self.by_date
	    order(created_at: :desc)
	  end
end
