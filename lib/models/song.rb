class Song < ActiveRecord::Base
	has_many :song_categories
	has_many :categories, through: :song_categories
	has_many :info_workshop_songs
	has_many :info_workshops, through: :info_workshop_songs

	# def song_categories
	# 	SongCategory.all.select do |song_category|
	# 		song_category.song == self
	# 	end
	# end

	# def categories
	# 	self.song_categories.map do |song_category|
	# 		song_category.category
	# 	end
	# end

	def category_names
		self.categories.map do |category|
			category.description
		end
	end

  def self.find_by(choice1, choice2)
    Song.all.select do |song|
      song.category_names.include?(choice1) && song.category_names.include?(choice2)
    end
  end
end




