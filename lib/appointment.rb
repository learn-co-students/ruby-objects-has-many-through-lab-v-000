class Appointment

    attr_accessor :doctor, :date

    def initialize(date, doctor)
      @doctor = doctor
      @date = date
    end

    def patient
      pry
      self.patient
    end

    def doctor(doc)
      self.doctor = doc
      self.doctor

    end



end
