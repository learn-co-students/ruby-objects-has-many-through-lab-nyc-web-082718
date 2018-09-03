require "pry"
require_relative 'appointment'
require_relative 'doctor'
require_relative 'patient'


# a1 = Artist.new('Biggie')
# a2 = Artist.new('Smalls')
#
# g1 = Genre.new('Pop')
# g2 = Genre.new('Rap')
# g3 = Genre.new('Rock')
#
# s1 = a1.new_song('SongOne', g1)
# s2 = a1.new_song('SongTwo', g2)
# s3 = a1.new_song('SongTree', g2)
# s4 = a2.new_song('Songfor', g3)
# s5 = a2.new_song('Songfith', g3)
# s6 = g1.new_song('Poppie', a1)

p1 = Patient.new('Stan')
p2 = Patient.new('Eric')
p3 = Patient.new('Timmy')
d1 = Doctor.new('Claire')
d2 = Doctor.new('Chris')

a1 = d1.new_appointment(p1, '082718')
a2 = d1.new_appointment(p2, '082218')
a3 = d1.new_appointment(p3, '082118')
a4 = d1.new_appointment(p1, '082018')

a5 = d2.new_appointment(p2, '081918')
a6 = d2.new_appointment(p3, '081718')

a7 = p1.new_appointment(d2, '080718')
a8 = p2.new_appointment(d2, '080918')

doctor_who = Doctor.new("The Doctor")
hevydevy = Patient.new("Devin Townsend")
appointment = doctor_who.new_appointment(hevydevy, "Friday, January 32nd")


binding.pry
0
