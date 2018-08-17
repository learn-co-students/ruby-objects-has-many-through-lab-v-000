class Genre

  attr_accessor :name

    def initialize(name)
      @name=name
    end

    def songs
      Song.all
    end

    def artists
      Artist.all
    end

end
