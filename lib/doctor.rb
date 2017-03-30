class Doctor
  attr_accessor :name
  attr_reader :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    self.appointments << appointment
    appointment.doctor = self
  end

  def patients
    self.appointments.collect {|appt| appt.patient}
  end

end



# Old code

# class Doctor
#   attr_accessor :name

#   def initialize(name)
#     @name = name
#     @appointments = []
#   end

#   def add_appointment(appointment)
#     @appointments << appointment
#     appointment.doctor = self
#   end

#   def appointments
#     @appointments
#   end

#   def patients
#     @appointments.collect do |appointment|
#       appointment.patient
#     end
#   end
# end