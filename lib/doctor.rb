class Doctor

  attr_accessor :name
  @@all=[]

    def initialize(name)
      @name=name
      @@all << self
    end

    def new_appointment(patient, date)
      appointment = Appointment.new(patient, self, date)
    end

    def self.all
      @@all
    end

    def appointments
      Appointment.all
      # binding.pry
    end

    def patients
      Appointment.all.collect do |appointment|
        appointment.patient
      end
    end


end
