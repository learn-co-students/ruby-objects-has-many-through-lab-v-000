class Appointment
  attr_accessor :name, :patient, :doctor

  def initialize(name, doctor)
    @name = name
    @doctor = doctor
    doctor.appointments << self
  end

  def patient=(patient)
    raise AssociationTypeMismatchError, "Patient class is expected" if !patient.is_a?(Patient)
    unless self.patient == patient
      @patient = patient
      doctor.patients << self.patient unless doctor.patients.include?(self.patient)
    end
  end

  def doctor=(doctor)
    raise AssociationTypeMismatchError, "Artist class is expected" if !doctor.is_a?(Doctor)
    @doctor = doctor
  end

end
