class Patient
  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end

  def appointments
    @appointments
  end

  def doctors
    @appointments.collect do |appointment|
      appointment.doctor
    end
  end

end

# describe "#add_appointment" do
#   it "takes in an argument of an apppointment and adds that appointment to it's list of appointments and tells that appointment it belongs to the patient" do 
#     martin.add_appointment(appointment)
#     expect(martin.appointments).to include(appointment)
#     expect(appointment.patient).to eq(martin)
#   end 
# end

# describe "#doctors" do 
#   it "has many doctors through appointments" do 
#     martin.add_appointment(appointment)
#     expect(martin.doctors).to include(doctor_who)
#   end
# end
# end