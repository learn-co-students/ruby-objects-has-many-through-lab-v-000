class Doctor
    attr_accessor :patient, :date, :appointment
    
    @@all = []

def initialize(name)
   @name = name 
    @@all << self
  end
  
def new_appointment(patient, date)
 Appointment.new(patient, date, self)
end 

def genres
    Genre.all.select do |song|
      genre.artist == self 
    end
  end
  
def songs
    Song.all.select do |song|
      song.artist == self
    end
  end
  
 def genres
    songs.map do |song|
      song.genre
    end 
  end 
  
  def self.all
    @@all
  end 
  
end 