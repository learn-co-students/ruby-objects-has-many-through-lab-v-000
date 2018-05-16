class Patient 
  @@all = []
  attr_accessor :name 
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  def self.all
    @@all 
  end
  def new_appointment(doctor,date)
    new_appointment = Appointment.new(date,self,doctor)
  end 
  def appointments 
    @@all.select do |array|
      array.self
    end 
  end 
  def doctors 
    @@all.select do |array|
      array.doctor
    end 
  end 
end 
