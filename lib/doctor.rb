class Doctor
attr_accessor :name
def initialize(name)
  @name=name
  @appointments=[]
end
def appointments
  @appointments
end
def add_appointment(apt)
  @appointments << apt
  apt.doctor=self
end 

def patients
  @appointments.map{|x|x.patient}
end
end
