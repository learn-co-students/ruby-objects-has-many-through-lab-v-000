class Appointment
  attr_accessor :date, :doctor, :patient
  def initialize(n,g)
    @date=n
    @doctor=g
    @patient=nil
    g.appointments<<self
  end
end
