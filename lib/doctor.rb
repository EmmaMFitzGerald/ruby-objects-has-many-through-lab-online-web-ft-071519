class Doctor
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def self.all 
    @@all 
  end
  
  def appointments
    Appointment.all.select do |apt|
      apt.doctor == self
    end
  end
  
  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end
  
  def patients
    self.appointments.collect {|appointments| appointments.patient}
  end 
  
end