class Patient
  attr_accessor :appointments, :doctors
  attr_reader :name
  
  def initialize(name)
    @name = name
    @appts = []
  end
  
  def new_appointment(doctor, date)
    appt = Appointment.new(self, doctor, date)
    if !@appts.include?(appt)
      @appts << appt
      appt.patient = self
    end
    appt
  end
  
  def appointments
    @appts
  end
  
  def doctors
    allDoctors = @appts.map {|appt| appt.doctor if appt.patient == self}
    allDoctors.uniq
  end
end