class Doctor

	attr_accessor :name, :doctor, :appointments, :patients

	def initialize(name)
		@name = name
		@appointments = []
	end
	
	def add_appointment(appt)
		@appointments << appt
	end

	def patients
		self.appointments.collect do |appts|
			appts.patient
		end
	end

end