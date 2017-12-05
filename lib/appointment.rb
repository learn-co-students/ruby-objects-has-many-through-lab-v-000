class Appointment

  attr_accessor :date, :doctor, :patient

  def initialize(date, doctor, patients=[])
    @doctor=doctor
    @date=date
    doctor.add_appointment(self)
    @patients = patients
  end

  def add_patient(patient)
    @patients << patient
  end

  def patients
    @patients
  end

  def doctors
    self.patients.collect do | patient |
      patient.doctor
    end
  end



end
