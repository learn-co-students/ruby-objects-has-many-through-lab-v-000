class Doctor
	attr_reader :name

	def initialize(name)
		@name = name
		@appointments = []
	end

	def add_appointment(appointment)
		@appointments << appointment
		appointment.doctor = self
	end

	def appointments
		@appointments
	end

	def patients
		@appointments.collect do |appointment|
			appointment.patient
		end
	end


end
