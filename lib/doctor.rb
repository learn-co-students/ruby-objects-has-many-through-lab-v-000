class Doctor
	attr_accessor :appointments, :name

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
		@appointments.collect {|app| app.patient }
	end

end

# fred = Doctor.new("Fred")
# fred.name
# Fred