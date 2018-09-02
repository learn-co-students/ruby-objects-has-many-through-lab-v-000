class Genre 
attr_accessor :name 

@@all = []

def initialize(name)
  @name = name
  @songs = []
  @@all = self
end




end