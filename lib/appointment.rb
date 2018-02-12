class Appointment

  attr_accessor :date, :doctor, :patient #the appointment belongs to a doctor and a patient, so it has those objects it belongs to as attributes
  #at some point, the appointment has to be linked to the doctor and patient, by both having the doctor and patient set equal to the appointment.patient and appointment.doctor
  #this also must trigger the doctor and patient objects to add the appointment to their respective arrays

#when an appointment is created, it has a date and is assigned a doctor instance
#so now the appointment knows about what doctor it is associated with
  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    #this takes the doctor instance, calls #add_appointment and passes in the self, which is the appointment itself
    #this is part of creating the link between the doctor and the appointment
    doctor.add_appointment(self)
  end


end
