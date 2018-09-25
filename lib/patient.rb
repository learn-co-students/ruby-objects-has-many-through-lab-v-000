class Patient
	attr_accessor :name
	attr_accessor :appointments
	attr_accessor :doctors

	def initialize(name)
		@name = name	
		@appointments = []
		@doctors = []
	end

	def add_appointment(appointment)
		appointment.patient = self
		@appointments << appointment
		@doctors << appointment.doctor
	end
end
