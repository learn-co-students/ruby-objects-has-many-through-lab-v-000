class Doctor
  @@all = []
  attr_accessor :name
  def initialize(name)
    @name = name 
    @@all << self
  end
  def self.all
    @@all
  end 
  def new_appointment(date,patient)
    new_appointment = Appointment.new(date,patient)
    new_appointment.doctor = self
  end 
  def appointments 
    @@all.select do |appointment|
      appointment.self 
    end
  end 
  def patients 
end 