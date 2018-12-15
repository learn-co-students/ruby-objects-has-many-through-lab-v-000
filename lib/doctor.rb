require 'pry'

class Doctor

	attr_accessor :name
  @@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

  def self.all
		@@all
	end

	def new_appointment(date, patient)
		Appointment.new(date, patient, self)
	end

# create array of a doctor's appts
	def appointments
		Appointment.all.collect do
			|appt| appt.doctor == self
		end
	end

# array of patients for all a doc's appts
	def patients
		self.appointments.collect do
			|appt| appt.patient
		end
	end

end  # class end
