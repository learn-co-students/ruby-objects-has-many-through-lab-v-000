require 'pry'
require 'appointment.rb'

class Doctor
	attr_accessor :name, :appointments, :patients

	def initialize(name)
		@name = name
		@appointments = []
	end

	def add_appointment(appointment)
		@appointments << appointment
	end

	def appointments
		@appointments
	end

	def patients
		self.appointments.collect do |appointment|
			appointment.patient
		end
	end
end

house = Doctor.new("House")
appointment = Appointment.new("10/22/2015", house)


