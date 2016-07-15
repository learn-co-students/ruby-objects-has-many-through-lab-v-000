class Appointment

	attr_accessor :date, :doctor, :patient

	def initialize(date, doctor)
		@date = date
		@doctor = doctor
		doctor.add_appointment(self)
	end




end


# learn spec/05_appointment_spec.rb