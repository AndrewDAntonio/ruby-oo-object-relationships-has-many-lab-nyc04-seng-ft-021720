require 'pry'

class Song

    @@all = []
    attr_accessor :name, :artist

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end
    
    def artist_name
        if !artist
            return nil
        end    
     self.artist.name
    end
end