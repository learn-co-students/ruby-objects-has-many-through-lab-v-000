class Patient

	attr_accessor :name, :appointments
	attr_writer :doctors

	def initialize(name)
		@name = name
		@appointments = []
	end

	def add_appointment(appointment)
		appointment.patient = self
		@appointments << appointment 
	end

	def doctors
		@appointments.map{|a| a.doctor}
	end


end