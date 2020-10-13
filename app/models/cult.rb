class Cult

    @@all = []

    def self.all 
    @@all
   end

   def self.find_by_name(name)
       @@all.find {|cult| cult.name == name}
   end
   
   def self.find_by_location(location)
        @@all.select {|cult| cult.location == location}
   end

   def self.find_by_founding_year(year)
       @@all.select {|cult| cult.founding_year == year}
   end

   attr_accessor :name, :location, :founding_year, :slogan,:cult_pop

    def initialize(name,location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @cult_pop = []
        @@all << self
    end

    def recruit_follower(follower,date)
        BloodOath.new(date,follower,self)
    end

    def cult_population
        @cult_pop.size
    end








end