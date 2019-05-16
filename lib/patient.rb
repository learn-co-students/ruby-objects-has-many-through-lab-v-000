# first attempt 6/27/17
# class Patient
#   attr_accessor :name, :appointments
#
#   def initialize(name)
#     @name = name
#     @appointments = []
#   end
#
#   def add_appointment(appt)
#     @appointments << appt
#     appt.patient = self
#   end
#
#   def doctors
#     self.appointments.collect {|appt| appt.doctor}
#   end
# end
class Patient
  attr_accessor :name, :doctor, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    appointments << appointment
    appointment.patient = self
  end

  def doctors
    appointments.collect {|a| a.doctor}
  end
end
