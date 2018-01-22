class Appointment

  attr_reader :name
  attr_accessor :doctor, :patient

  def initialize(name, patient)
    @name = name
    self.patient = patient
    @songs = []
    patient.add_appointment(self)
  end

end
