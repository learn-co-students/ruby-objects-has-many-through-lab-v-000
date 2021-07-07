class Doctor
  attr_reader :name
  @@all=[]
  def initialize(name)
    @name=name
    @@all << self
  end
  def self.all
    @@all
  end
  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end
  def appointments
    Appointment.all.select{|date| date.doctor == self}
  end
  def patients
    appointments.map{|appointment| appointment.patient}
  end
end