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

	def new_appointment(patient, date)
		Appointment.new(patient, self, date)
	end

# create array of a doctor's appts
	def appointments
    Appointment.all.collect do
			|appt| appt if appt.doctor == self
		end
	end

# array of patients for all a doc's appts
	def patients
		Appointment.all.collect do |appt|
				appt.patient if appt.doctor == self
		end
	end


end  # class end
