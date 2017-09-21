class Appointment

  attr_accessor :time, :date, :doctor, :name, :appointments

    def initialize(date, doctor)
      @date = date
      @doctor = doctor

    end
  end
