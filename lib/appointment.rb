require 'pry'

class Appointment
    attr_accessor :date, :patient, :doctor
    @@all = []

    def initialize(patient, doctor, date)
        # @name, @patient, @doctor = name, patient, doctor
        @date = date
        @patient = patient
        @doctor = doctor
        @@all << self
    end

    def self.all
        @@all
    end

end

# binding.pry

# Stop pry