class Doctor
	attr_accessor :name, :appointments, :patient

	def initialize(name)
		@name = name
		@appointments = []
	end

	def add_appointment(appointment)
		appointment.doctor = self
		@appointments << appointment
	end

	def patients
		@appointments.map do |f|
			f.patient
		end
	end

end