class Doctor
  attr_accessor :name, :appointments, :patients
  def initialize n
    @name=n
    @appointments=[]
    @patients=[]
  end
  def add_appointment s
    @appointments<<s
    s.doctor=self
  end
end
