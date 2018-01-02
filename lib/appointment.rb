class Appointment
attr_accessor :name,:doctor,:date,:patient

def initialize(date,name)
  @name = name
  @date = date
  @doctor=name
  name.add_appointment(self)
end

end
