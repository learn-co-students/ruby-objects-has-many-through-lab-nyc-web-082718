class Patient

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select do |apt|
      apt.patient == self
    end
  end

  def doctors
    doctors = []
    self.appointments.each do |apt|
      doctors << apt.doctor
    end
    return doctors.uniq
  end


end
