class Song < ActiveRecord::Base
	has_many :song_categories
	has_many :categories, through: :song_categories

	def category_names
		self.categories.map do |category|
			category.description
		end
	end
#def find_by
end
