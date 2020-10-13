require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console



#Making New Cults#
maga = Cult.new("Maga","D.C.", 2016, "I am stupid")
scientology = Cult.new("Church of Scientology", "L.A.", 1970, "We are special")
floridaman = Cult.new("Florida man", "Florida", 2000, "I'm insanely dumb")
congress = Cult.new("Congress", "D.C.", 1776, "We are corrupt")



#Making New Followers#
trump = Follower.new("Trump",65,"I ruin everything")
tom = Follower.new("Tom Cruise", 53, "I do my own stunts")
brent = Follower.new("Brent Mcdouche", 19, "Drive fast leave a pretty corpse")

#Joining cults#
trump.join_cult(maga,"2015-05-24")
tom.join_cult(scientology, "2002-06-24")


#Recruiting folowers#
congress.recruit_follower(brent,"1992-02-24")
maga.recruit_follower(tom,"2017-03-30")











binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits