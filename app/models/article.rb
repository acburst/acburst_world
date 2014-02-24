class Article < ActiveRecord::Base
	belongs_to :category

	validates :title, presence: true
	validates :content, presence: true

	scope :active, where('active = ?', true)
  	scope :alphabetical, order('title')
end
