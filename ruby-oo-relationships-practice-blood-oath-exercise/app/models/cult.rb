class Cult
    attr_reader :name, :location, :founding_year, :slogan

    @@all = []

    def initialize name, location, founding_year, slogan
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan

        @@all << self
    end

    def self.all
        @@all
    end

    def recruit_follower follower
        BloodOaths.new(Time.now, self, follower)
    end

    def cult_population
        BloodOaths.all.filter { |el| el.cult.name == self.name }.count
    end

    def self.find_by_name name
        all.find { |el| el.name == name }
    end

    def self.find_by_location location
        all.find { |el| el.location == location }
    end

    def self.find_by_founding_year founding_year
        all.find { |el| el.founding_year == founding_year }
    end

    def members
        BloodOaths.all.filter { |el| el.cult.name == self.name }
    end

    def average_age
        (members.sum { |el| el.follower.age } / members.length).round
    end

    def my_followers_mottos
        members.map { |el| el.follower.life_motto }
    end

    def self.least_popular
        BloodOaths.all.group_by { |el| el.cult.name }.min_by { |k, v| v.length }
    end

    def self.most_common_location
        all.group_by { |el| el.location }.max_by { |k, v| v.length }
    end

end