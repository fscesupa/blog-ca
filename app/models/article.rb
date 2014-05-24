class Article < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	
	validates :title, :author, :text,
	presence: true,
	length: { minimum: 5 }
end
