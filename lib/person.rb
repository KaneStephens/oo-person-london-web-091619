
require "pry"

class Person

    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25.00
        @happiness = 8 #max 10, min 0
        @hygiene = 8 #max 10, min 0
    end

    def hygiene=(number)   
        if number > 10
            @hygiene = 10
        elsif number < 0
            @hygiene = 0
        else
            @hygiene = number
        end
    end

    def happiness=(number)
        
        if number > 10
            @happiness = 10
        elsif number < 0
            @happiness = 0
        else
            @happiness = number
        end
    
    end




    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self. hygiene -= 3
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            return 'blah blah sun blah rain'
        else
            return 'blah blah blah blah blah'
        end
    end

    def clean?
        return @hygiene > 7 ? true : false
    end

    def happy?
        return @happiness > 7 ? true : false
    end


end