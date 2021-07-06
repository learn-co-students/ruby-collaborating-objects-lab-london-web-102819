require_relative 'song.rb'

class MP3Importer

    attr_accessor :path, :files

    @files = []

    def initialize(filepath)
        @path = filepath
    end

    def files
        @files = Dir.children(@path)
    end

    def import
        files = self.files
        files.each do |filename|
            Song.new_by_filename(filename)
        end
    end


end

