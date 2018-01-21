class Appointment

	attr_accessor :name, :patient, :doctor

	def initialize(name, doctor)
		@name = name
		@doctor = doctor
		doctor.add_appointment(self)
	end

end
