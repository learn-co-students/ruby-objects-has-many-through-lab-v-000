class Genre

      attr_accessor :name, :songs

      def initialize(name)
            @name = name
            @songs = []
      end

      def artists
            @songs.collect do |sg|
                  sg.artist
            end
      end
end
