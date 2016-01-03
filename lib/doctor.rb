class Doctor
	attr_accessor :name
	attr_accessor :appointments
	attr_accessor :patients

	def initialize(name)
		@name = name
		@appointments = []
		@patients = []
	end

	def add_appointment(appointment)
		appointment.doctor = self
		@appointments << appointment
		@patients << appointment.patient
	end
end
