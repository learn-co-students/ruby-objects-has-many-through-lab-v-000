# class Patient
#   attr_accessor :name, :appointment, :doctors
#
#   def initialize(name)
#     @name = name
#     @appointments = []
#   end
#
#   def add_appointment(appointment)
#     @appointments << appointment
#     appointment.add_appointment(self)
#   end
#
#   def appointments
#     @appointments
#   end
#
#   def doctors
#     self.appointments.collect { |app| app.doctor }
#   end
# end

class Patient
  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end

  def appointments
    @appointments
  end

  def doctors
    self.appointments.collect { |app_objects| app_objects.doctor }
  end
end
