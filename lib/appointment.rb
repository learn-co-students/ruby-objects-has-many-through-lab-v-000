class Appointment

  attr_accessor :name, :patient, :doctor

    def initialize(doctor, patient)
      @doctor = doctor
      @patient = patient
      patient.add_appointment(self)
    end

  end
