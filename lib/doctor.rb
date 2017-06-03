class Doctor

	attr_accessor :name, :patient, :appointment

	def initialize(name)
		@name = name
		@appointments = []
	end

	def add_appointment(appointment)
		appointment.doctor = self
		@appointments << appointment
	end

	def appointments
		@appointments
	end

	def patients
		self.appointments.collect {|appt| appt.patient}
	end
end