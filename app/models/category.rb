class Category < ActiveRecord::Base
	has_many :subcategories

  attr_accessible :name

  validates :name, :presence => :true
end
