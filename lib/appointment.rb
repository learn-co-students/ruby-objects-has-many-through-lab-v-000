class Appointment

	attr_accessor :doctor, :date, :patient
	attr_reader


	def initialize(date, doctor)
		@date = date
		@doctor = doctor
		doctor.appointments << self
	end

end
