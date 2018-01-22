class Doctor
	attr_accessor :name, :appointments, :patients

	def initialize(name)
		@name = name
		@appointments = []
	end

	def add_appointment(appointment)
		appointment.doctor = self
		@appointments << appointment
	end

	def patients
		@appointments.collect {|app| app.patient}
	end

end