class Genre
    
    attr_accessor :name, :songs, :artists
    
    def initialize (name)
        @name = name
        @songs = %w[]
        @artists = %w[]
    end
    
    
    
end