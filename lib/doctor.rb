class Doctor
  attr_accessor :patients, :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
    @appts = []
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(patient, date)
    appt = Appointment.new(patient, self, date)
    if !@appts.include?(appt)
       @appts << appt
       appt.doctor = self
    end
    appt
  end
  
  def appointments
    @appts
  end
  
  def patients
    allPatients = @appts.map {|appt| appt.patient }
    allPatients.uniq
  end
end