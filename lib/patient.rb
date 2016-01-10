class Patient

	attr_accessor :name, :appointments, :doctors

	def initialize(name)
		@name = name
		@appointments = []
		@doctors = []
	end

	def add_appointment(appointment)
		appointment.patient = self
		@doctors << appointment.doctor
		@appointments << appointment
		appointment.doctor.patients << self
	end

end
