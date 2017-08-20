# Patient
#   #new
#     initializes with a name
#   #add_appointment
#     takes in an argument of an apppointment and adds that appointment to it's list of appointments and tells that appointment it belongs to the
#  patient
#   #doctors
#     has many doctors through appointments


class Patient
  attr_accessor :doctor, :appointment, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end

  def doctors
    self.appointments.collect do |appointment|
      appointment.doctor
    end
  end
#
#
#
#
end
