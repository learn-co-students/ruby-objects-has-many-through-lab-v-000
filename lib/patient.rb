class Patient
	def initialize(name)
		@name = name
		@appointments = []
	end
	def add_appointment(appointment)
		@appointments << appointment
		appointnment.patient = self
	end
	def doctors
		@doctors = @appointments.collect { |x| x.doctor }.uniq
		@doctors
	end
end