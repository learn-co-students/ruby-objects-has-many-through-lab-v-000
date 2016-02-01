class Doctor
	attr_accessor :name, :appointments
	
	def initialize(name)
		@name = name
		@appointments = []
	end
	
	def appointments
		@appointments
	end
	
	def add_appointment(appointment)
		appointment.doctor = self
		self.appointments << appointment
	end
	
	def patients
		self.appointments.collect {|appt| appt.patient}
	end
	
end