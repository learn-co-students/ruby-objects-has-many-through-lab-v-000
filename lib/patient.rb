# class Patient
#   attr_accessor :name
#   attr_reader :appointments
#
#   def initialize(name)
#     @name = name
#     @appointments = []
#   end
#
#   def add_appointment(appointment)
#     @appointments << appointment
#     appointments.patient = self
#   end
#
#   def doctors
#     self.appointments.collect do |appointment|
#       appointment.doctor
#     end
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
    self.appointments.collect do |appointment|
      appointment.doctor
    end
  end
end
