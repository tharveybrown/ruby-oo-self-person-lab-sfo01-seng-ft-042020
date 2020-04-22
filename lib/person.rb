require 'pry'
class Person
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    def happiness=(index)
        if index > 10
            @happiness = 10
        elsif index < 0
            @happiness = 0
        else
            @happiness = index
        end
    end
    def hygiene=(index)
        if index > 10
            @hygiene = 10
        elsif index < 0
            @hygiene = 0
        else
            @hygiene = index
        end
    end
    def happy?
        if @happiness > 7
            return true
        else
            false
        end
    end

    def clean?
        if @hygiene > 7
            return true
        else
            false
        end
    end
    
    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
     
      self.hygiene=(@hygiene += 4)
      return "♪ Rub-a-dub just relaxing in the tub ♫"
    end
     # 5 before working out
     # 7

    def work_out
      # @hygiene -= 3
      self.hygiene=(@hygiene -= 3)
      self.happiness=(@happiness += 2)
      return "♪ another one bites the dust ♫"
    end

    def call_friend(person)
      person.happiness = person.happiness + 3
      self.happiness = self.happiness + 3
      return "Hi #{person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
      if topic == "politics"
        
        person.happiness = person.happiness - 2
        self.happiness = self.happiness - 2
        return "blah blah partisan blah lobbyist"
      elsif topic == "weather"
        person.happiness = person.happiness + 1
        self.happiness = self.happiness + 1
        return "blah blah sun blah rain"
      else
        return "blah blah blah blah blah"
      end
        
    end
end
