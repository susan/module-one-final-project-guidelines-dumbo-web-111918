class Category < ActiveRecord::Base
	has_many :song_categories
	has_many :songs, through: :song_categories
	#referencing table here so plural
	##have to say what its relationship to join before has many thru the join
end
