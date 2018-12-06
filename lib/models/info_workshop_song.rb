class InfoWorkshopSong < ActiveRecord::Base
    belongs_to :info_workshop
    belongs_to :song

  def self.find_by_workshop_id
     self.all.map do |playlist|
   	   playlist.info_workshop
     end
  end

    def self.find_by_song_id
      #displaying all the workshop songs for all workshops
      binding.pry
     self.all.map do |playlist|
   	   playlist.song
     end
  end

end
