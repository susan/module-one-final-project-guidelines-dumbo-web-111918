class InfoWorkshop < ActiveRecord::Base
    has_many :info_workshop_songs
    has_many :songs, through: :info_workshop_songs
end
