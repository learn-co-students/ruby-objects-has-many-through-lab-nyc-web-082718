class Doctor

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select do |apt|
      apt.doctor == self
    end
  end

  def patients
    patients = []
    self.appointments.each do |apt|
      patients << apt.patient
    end
    return patients.uniq
  end


end
