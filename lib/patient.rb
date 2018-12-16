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

	def new_appointment(date, doctor)
		Appointment.new(self, date, doctor)
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
