class Artist 
 attr_accessor :songs, :name
 @@song_count = 0

 def initialize(name)
   @name = name
   @songs = []
 end 

 def song_counter
   @@song_count += 1
 end

 def add_song(song_name)
   song_counter
   self.songs.push(song_name)
   song_name.artist = self
 end

 def add_song_by_name(song_name)
   song_counter
   song_name = Song.new(song_name)
   song_name.artist = self
   self.songs.push(song_name)
 end

 def self.song_count
   @@song_count
 end
end