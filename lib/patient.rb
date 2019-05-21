class Patient
	
	attr_accessor :patient, :doctors, :appts
	
	def initialize(patient)
		@patient = patient
		@appts = []
	end
	
	 def add_appointment(appt_obj)
		@appts << appt_obj
		appt_obj.patient = self
# binding.pry
	 end
	 
	 def doctors
		@appts.map { |a| a.doctor  }
	 end
	 
	 def appointments
		@appts
	 end
end
