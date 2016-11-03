class Patient
  attr_accessor :name, :appointments, :doctors
  def initialize n
    @name=n
    @appointments=[]
    @doctors=[]
  end
  def add_appointment a
    @appointments<<a
    @doctors<<a.doctor
    a.patient=self
    a.doctor.patients<<self
  end
end
