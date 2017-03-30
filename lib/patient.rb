class Patient
  attr_accessor :name
  attr_reader :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    self.appointments << appointment
    appointment.patient = self
  end

  def doctors
    self.appointments.collect {|appt| appt.doctor}
  end
end



# Old code

# class Patient
#   attr_accessor :name

#   def initialize(name)
#     @name = name
#     @appointments = []
#   end

#   def add_appointment(appointment)
#     @appointments << appointment
#     appointment.patient = self
#   end

#   def appointments
#     @appointments
#   end

#   def doctors
#     @appointments.collect do |appointment|
#       appointment.doctor
#     end
#   end
# end