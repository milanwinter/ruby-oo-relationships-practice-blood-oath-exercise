class Follower


    @@all = []

    def self.all
        @@all
    end

    def self.of_a_certain_age(age)
        @@all.select {|follower| follower.age >= age}
    end


    attr_accessor :name, :age, :life_motto, :cults
 

    def initialize(name,age,life_motto)
        @name = name
        @age = age
        @life_motto
        @cults = []
        @@all << self
    end

    def join_cult(cult,date)
       BloodOath.new(date,self,cult)
    end










end