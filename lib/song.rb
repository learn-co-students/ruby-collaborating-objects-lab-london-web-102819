require "pry"
class Song
    attr_accessor :name, :artist
        @@all = [ ]
    def initialize (name)
        @name = name
        save
    end

    def save 
        @@all << self
    end

    def self.all
        @@all
    end

    def self.new_by_filename (filename)
        new_song = self.new(filename.split("-")[1].strip)
        new_song.artist_name=filename.split("-")[0].strip
        new_song
    end

    def artist_name=(name)
        self.artist = Artist.find_or_create_by_name(name)
    end
        # binding.pry
end








