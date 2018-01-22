class Patient

	attr_accessor :name, :appointments, :doctors

	def initialize(name)
		@name = name
		@appointments = []
	end

	def add_appointment(appt)
		appt.patient = self
		@appointments << appt
	end

	def doctors
		self.appointments.collect do |doc|
			doc.doctor
		end
	end

end