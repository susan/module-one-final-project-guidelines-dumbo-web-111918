class Song < ActiveRecord::Base
	has_many :song_categories
	has_many :categories, through: :song_categories
	has_many :info_workshop_songs 
	has_many :info_workshops, through: :info_workshop_songs

	def category_names
		self.categories.map do |category|
			category.description
		end
	end
#def find_by
end
