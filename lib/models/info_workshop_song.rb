class InfoWorkshopSong < ActiveRecord::Base
    belongs_to :info_workshop
    belongs_to :song
end