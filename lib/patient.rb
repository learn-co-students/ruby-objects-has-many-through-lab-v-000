class Patient
  attr_accessor :name, :appointments

  def initialize(name)
    @name=name
    @appointments=[]


  end

  def add_appointment(appointment)
    @appointments<<appointment
    appointment.patient=self
  end

  def doctors
    new_array= self.appointments.collect {|x| x.doctor}
    new_array.uniq
  end
  
end
