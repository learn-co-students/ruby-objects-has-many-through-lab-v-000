class Appointment
    attr_accessor :patient, :doctor, :date

    @@allAppointments= []

    def initialize(patient, doctor, date)
        @patient = patient
        @doctor = doctor
        @date = date
        @@allAppointments << self
    end

    def self.all
        @@allAppointments
    end

end
