class Position < ActiveRecord::Base
	belongs_to :subcategory

  attr_accessible :name, :description, :logo, :subcategory_id

  validates :name, :logo, presence: true

  has_attached_file :logo, :styles => { :medium => "300x300>", :thumb => "50x50>" }
end
