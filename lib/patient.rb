
class Patient
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end
  
  def new_appointment(doctor, date)
    item = Appointment.new(self, doctor, date)
    item.patient = self
    item
  end
  
  def appointments
    Appointment.all.select { |item| item.patient == self }
  end

  def doctors
    appointments.collect { |item| item.doctor }
  end
end