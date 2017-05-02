class Appointment
#-----------------------------------------------------------------------------
#vars and macros
attr_accessor :date, :doctor, :patient
#-----------------------------------------------------------------------------
#instance
def initialize (date, doctor)
@date = date
@doctor = doctor
if !doctor.appointments.include?(self)
doctor.appointments << self
end
end




#-----------------------------------------------------------------------------
#class

end