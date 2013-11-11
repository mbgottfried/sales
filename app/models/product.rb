class Product < ActiveRecord::Base
  has_attached_file :file

  belongs_to :user

  has_many :sales

  validates_numericality_of :price,
  	greater_than: 49,
  	massage: "must be at least 50 cents"
end
