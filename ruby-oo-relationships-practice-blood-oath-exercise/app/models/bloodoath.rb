class BloodOaths  
    attr_reader :cult, :follower, :initiation_date

    @@all = []

    def initialize initiation_date, cult, follower
        @initiation_date = initiation_date
        @follower = follower
        @cult = cult

        @@all << self
    end

    def self.all
        @@all
    end

    def self.return_first_oath
        BloodOaths.all.sort_by { |el| el.initiation_date.tr("-_", "").to_i }.first
    end

end