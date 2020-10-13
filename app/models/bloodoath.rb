class BloodOath

    @@all = []

    def self.all
        @@all
    end

    attr_accessor :initiation_date, :follower, :cult


    def initialize(initiation_date,follower, cult)
        @initiation_date = initiation_date
        @follower = follower
        @cult = cult
        follower.cults << cult
        cult.cult_pop << follower
        @@all << self
    end





end