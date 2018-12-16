require 'pry'

class Patient

	attr_accessor :name
	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

	def self.all
		@@all
	end

	def new_appointment(doctor, date)
		Appointment.new(self, doctor, date)
	end

	def appointments
	  Appointment.all.collect do |appt|
			appt if appt.patient == self
		end
	end

	def doctors
		Appointment.all.collect do |appt|
			appt.doctor if appt.patient == self
		end
	end
end #class end
