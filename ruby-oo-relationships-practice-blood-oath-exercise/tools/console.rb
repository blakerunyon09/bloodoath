require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

mandalors = Cult.new("Mandalors", "Mandalor", 4500, "This is the way.")
jedi = Cult.new("Jedi", "Coruscant", 3400, "May the force be with you.")
sith = Cult.new("Sith", "Yavin 4", 4500, "Through strength, I gain power.")
rebels = Cult.new("Rebel Alliance", "Yavin 4", 4650, "To make forever free all beings in the galaxy.")

skywalker = Followers.new("Luke Skywalker", 27, "I will teach you the ways of the Jedi.")
maul = Followers.new("Darth Maul", 35, "Yes, Master.")
vader = Followers.new("Darth Vadar", 52, "You have disappointed me for the last time.")
fett = Followers.new("Boba Fett", 62, "I've got a target lock.")
child = Followers.new("Baby Yoda", 27, "Bwah.")
jinn = Followers.new("Qua-Gonn Jinn", 27, "Patience.")
tano  = Followers.new("Asoka Tano", 27, "Master!")

oath1 = BloodOaths.new("_3400-11-20__", jedi, skywalker)
oath2 = BloodOaths.new("_3420-08-08_", sith, maul)
oath3 = BloodOaths.new("_3450-07-05_", sith, vader)
oath4 = BloodOaths.new("_3427-09-22_", mandalors, fett)
# oath5 = BloodOaths.new("_3450-01-10_", mandalors, child)
oath6 = BloodOaths.new("_3395-12-15_", jedi, jinn)
oath7 = BloodOaths.new("_3456-01-26_", jedi, tano)
oath8 = BloodOaths.new("_3456-01-26_", rebels, tano)
oath9 = BloodOaths.new("_3456-01-26_", rebels, fett)

binding.pry
"fin!"