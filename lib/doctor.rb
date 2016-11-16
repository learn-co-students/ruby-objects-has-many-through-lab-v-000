require 'pry'

class Doctor
attr_accessor :name
attr_reader :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self unless appointment.doctor == self
  end

  def patients
    self.appointments.collect{|k| k.patient}
  end

end

# A doctor has patients
#A doctor has appointments

# attr_accessor :name, :appointment, :patient
#
# def initialize(name)
#   @name = name
#   @appointments = []
# end
#
# def add_appointment(appointment)
#   binding.pry
#   @appointments << appointment
#   appointment.doctor = self unless appointment.doctor == self
# end
#
# def patients
#   # binding.pry
# end
