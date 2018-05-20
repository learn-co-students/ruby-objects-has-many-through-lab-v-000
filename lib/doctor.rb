
class Doctor

  attr_accessor :name, :patient, :appointment
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    Appointment.new(date, self, patient)
  end

  def appointments
    Appointment.all.select{|appointment|appointment.doctor == self}
  end

  def patients
    appointments.map {|appointment|appointment.patient}
  end
end
