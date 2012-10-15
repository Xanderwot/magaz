class Subcategory < ActiveRecord::Base
	belongs_to :category
	has_many :positions

  attr_accessible :name, :category_id

  validates :name, :category_id, :presence => :true
end
