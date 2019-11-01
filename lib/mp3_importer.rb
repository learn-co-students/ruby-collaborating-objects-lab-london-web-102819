
class MP3Importer
   attr_accessor :path 
    @@all= []
    def initialize (path)
        @path = path
    end

    def files
      Dir.children(@path)
    end

    def import 
        files.each do |each|
            Song.new_by_filename(each)
        end
    end

end