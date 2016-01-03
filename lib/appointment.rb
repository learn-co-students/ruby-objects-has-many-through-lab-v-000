class Appointment
	attr_accessor :date, :doctor
	attr_reader :patient
	def initialize(date, doctor)
		@date = date
		@doctor = doctor
		@doctor.appointments << self
	end
	def patient(patient)
		@patient = patient
		@patient.appointments << self
	end
	
end