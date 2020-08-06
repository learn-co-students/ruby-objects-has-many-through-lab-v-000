class Appointment
    attr_accessor :name, :patient, :doctor

    @@all = [ ]

    def self.all
        @@all
    end

    def initialize(date, patient, doctor)
        @date = date
        @patient = patient 
        @doctor = doctor
        @@all << self
    end

end
