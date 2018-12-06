class InfoWorkshopSong < ActiveRecord::Base
    belongs_to :info_workshop
    belongs_to :song

  def self.find_by_workshop_id
     self.all.map do |playlist|
   	   playlist.info_workshop
     end
  end
end
