require 'pry'
class Genre 
  attr_reader :name 
  
  def initialize(name)
    @name = name
  end
  
  def songs 
    Song.all.select {|song| song.genre == self}
  end 
  
  def artists
    list = Song.all.select {|song| song.artist if song.genre == self}
    list.map {|x| x.artist}
  end 
  
end