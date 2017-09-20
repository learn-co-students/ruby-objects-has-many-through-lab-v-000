require 'pry'
class Doctor

    attr_accessor :name, :appointments, :patients

    def initialize(name)
      @name = name
      @appointments = []
    end

    def add_appointment(appt)
      @appointments << appt
      appt.doctor(self)
    end

    def patients
      self.appointments.collect do |people|
        appointment.patients
      end
    end

end
