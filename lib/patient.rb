class Patient
	attr_accessor :name
	attr_reader :appointments
	def initialize(name)
		@name = name
		@appointments = []
	end
	def add_appointment(appointment)
		@appointments << appointment
		appointment.patient = self
	end
	def doctors
		@doctors = @appointments.collect { |x| x.doctor }.uniq
		@doctors
	end
end