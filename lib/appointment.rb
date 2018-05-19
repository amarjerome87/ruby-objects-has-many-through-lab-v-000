class Appointment

attr_accessor :patient, :doctor, :date

@@all = []

def initialize(date, patient, doctor)
  @date = date
  @patient = patient
  @doctor = doctor
  @@all << self
end

def self.all
  @@all
end

def patient
  Patient.all.collect do |patients|
    patients == self
  end
end



end
