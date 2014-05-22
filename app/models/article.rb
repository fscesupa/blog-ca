class Article < ActiveRecord::Base
	validates :title, :content, presence: true,
                    length: { minimum: 5 }

    has_many :comments

end
