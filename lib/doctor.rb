class Doctor
  attr_accessor :name, :appointments, :patients
  def initialize(name)
    @appointments = []
    @patients = []
    @name = name
  end
end
