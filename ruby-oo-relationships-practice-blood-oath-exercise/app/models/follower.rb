class Followers
    attr_reader :age, :name, :life_motto

    @@all = []

    def initialize name, age, life_motto
        @name = name
        @age = age
        @life_motto = life_motto

        @@all << self
    end

    def self.all
        @@all
    end

    def join_cult cult
        BloodOaths.new(Time.now, cult, self)
    end

    def self.follower_of_a_certain_age num 
        all.filter { |el| el.age >= num }
    end

    def cults
        BloodOaths.all.filter { |el| el.follower.name == self.name }
    end

    def my_cults_slogans
        cults.filter.map { |el| el.cult.slogan }
    end

    def self.most_active
        all.max_by { |el| el.cults.count }
    end

    def self.top_ten
        all.sort_by { |el| -el.cults.count }
    end

    def fellow_cult_members
        cults.map { |el| el.cult.members.filter { |el| el.follower.name != self.name } }
    end

end