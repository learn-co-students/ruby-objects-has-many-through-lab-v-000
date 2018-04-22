# Ruby Object Relations: Has-Many-Through Lab

## Objectives

1. Write classes that are related to each other via the "has-many-through" relationship.
2. Write methods that use the "has-many-through" relationship to deliver information on related objects.

## Overview

In this lab, we'll be dealing with two sets of three classes.

We have a `Song`, `Artist` and `Genre` class. Songs belong to an artist and belong to a genre. A genre has many songs and an artist has many songs. An artist has many genres through its songs and a genre has many artists through its songs.

We also have an `Appointment`, `Doctor` and `Patient` class. Appointments belong to a patient and to a doctor. A doctor has many appointments and a patient has many appointments. A doctor has many patients through its appointments and a patient has many doctor's through its appointments.

## Instructions

Start with the `Artist`/`Song`/`Genre` domain.

**The `Artist` model:**

* The `Artist` class needs a class variable `@@all` that begins as an empty array
* The `Artist` class needs a class method `.all` that lists each artist in the class variable
* An artist is initialized with a name and is saved in the @@all array.
* The `Artist` class needs an instance method, `#new_song`, that takes in an argument of a name and genre creates a new song. That song should know that it belongs to the artist.
* The `Artist` class needs an instance method, `#songs`, that iterates through all songs and finds the songs that belong to that artist. Try using `select` to achieve this
* The `Artist` class needs an instance method, `#genres` that iterates over that artist's songs and collects the genre of each song.

**The `Song` model:**

* The `Song` class needs a class variable `@@all` that begins as an empty array.
* The `Song` class needs a class method `.all` that lists each artist in the class variable.
* A song should be initialized with a name, an artist, and a genre, and be saved in the `@@all` array.

**The `Genre` model:**

* The `Genre` class needs a class variable `@@all` that begins as an empty array.
* The `Genre` class needs a class method `.all` that lists each artist in the class variable.
* A genre should be initialized with a name.
* The `Genre` class needs an instance method, `#new_song`, that takes in an argument of a name and an artist and creates a new song. That song should know that it belongs to the genre.
* The `Genre` class needs an instance method, `#songs`, that iterates through all songs and finds the songs that belong to that genre.
* The `Genre` class needs an instance method, `#artists`, that iterates over the genre's collection of songs and collects the artist that owns each song.

Now let's move on to our `Doctor`/`Appointment`/`Patient` domain model.

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

<p data-visibility='hidden'>View <a href='https://learn.co/lessons/ruby-objects-has-many-through-lab' title='Ruby Object Relations: Has-Many-Through Lab'>Ruby Object Relations: Has-Many-Through Lab</a> on Learn.co and start learning to code for free.</p>

<p class='util--hide'>View <a href='https://learn.co/lessons/ruby-objects-has-many-through-lab'>Has Many Objects Through Lab</a> on Learn.co and start learning to code for free.</p>
