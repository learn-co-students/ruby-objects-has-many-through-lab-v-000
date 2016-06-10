**The `Doctor` model:**

* A doctor should be initialized with a name and an empty `@appointments` array.
* The `Doctor` class needs an instance method, `#add_appointment`, that takes in an instance of the `Appointment` class and adds that appointment to the doctor's `@appointments` array. The method should also tell that appointment that it belongs to that doctor.
* The `Doctor` class needs an instance method, `#appointments`, that returns the `@appointments` array.
* The `Doctor` class needs an instance method, `#patients`, that iterates over that doctor's appointments and collects the patient that belongs to each appointment.

**The `Appointment` model:**

* An appointment should be initialized with a date (as a string, like `"Monday, August 1st"`), and a doctor. The `#initialize` method should tell the new appointment that it belongs to the doctor passed in as an argument and tell the doctor that it now has this appointment in its collection of appointments. Use the `Doctor#add_appointment` method here.

**The `Patient` model:**

* A patient is instantiated with a name and an empty `@appointments` array.
* The `Patient` class needs an instance method, `#add_appointment`, that takes in an argument of an appointment and adds that appointment to the `@appointments` array. This method should also tell the appointment that it belongs to this patient.
* The `Patient` class needs an instance method, `#appointments`, that returns the content of the `@appointments` array.
* The `Patient` class needs an instance method, `#doctors`, that iterates over that patient's appointments and collects the doctor that belongs to each appointment.
