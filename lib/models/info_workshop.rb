class InfoWorkshop < ActiveRecord::Base
    has_many :info_workshop_songs
    has_many :songs, through: :info_workshop_songs

   def self.show_workshops_by_name
	   self.all.map do |workshop|
       "#{workshop.id}) #{workshop.name}"
       #had to show id and workshop name in string if have multiple names
     end
   end

end
