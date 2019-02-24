# # # your code goes here
# # First you need to create a person class that is initialized with a name that cannot be changed.
# # Each instance of class Personshould be able to remember their name
# # Each instance of class Person should start with $25 in their bank accounts
# # Each instance of class Person should start with eight happiness points
# # Each instance of class Person should start with eight hygiene points
# # The happiness and hygiene points should be able to change, however the maximum and minimum points for both happiness and hygiene should be 10 and 0 respectively
# # The amount in the bank account should also be able to change, though it has no max or min.

# The clean? and happy? methods are pretty similiar: they should return true if the happiness or hygiene points exceed seven. Otherwise they should return false.

# The get_paid method should accept a salary amount and add this to the person's bank account. Then the method should return the string "all about the benjamins".

# The take_bath method should increment the person's hygiene points by four and return the string "♪ Rub-a-dub just relaxing in the tub ♫".

# The work_out method should increment the person's happiness by two points, decrease their hygiene by three points, and return the Queen lyrics, "♪ another one bites the dust ♫".

# The call_friend method should accept another instance of the Person class, or "friend". The method should increment the caller and the callee's happiness points by three. If Stella calls her friend Felix, the method should return "Hi Felix! It's Stella. How are you?"



require 'pry'

class Person
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        self.happiness = 8
        self.hygiene = 8
    end

    def happiness=(person_happiness)
        if person_happiness > 10
            @happiness = 10
        elsif person_happiness < 0
            @happiness = 0
        else
            @happiness = person_happiness
        end
    end

    def hygiene=(person_hygiene)
        if person_hygiene > 10
            @hygiene = 10
        elsif person_hygiene < 0
            @hygiene = 0
        else
            @hygiene = person_hygiene
        end
    end

    def clean?
        if self.hygiene > 7 
            true 
        else 
            false 
        end
    end

    def happy?
        if self.happiness > 7 
            true 
        else 
            false 
        end
    end

    def get_paid(salary)
        self.bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(callee)
        callee.happiness += 3
        self.happiness += 3
        "Hi #{callee.name}! It's #{self.name}. How are you?"
    end

# Finally, the start_conversation method should accept two arguments, the person to start a conversation with and the topic of conversation.

# If the topic is politics, both people get sadder and the method returns "blah blah partisan blah lobbyist".
# If the topic is weather, both people get a little happier and the method returns "blah blah sun blah rain".
# If the topic is not politics or weather, their happiness points don't change and the method returns "blah blah blah blah blah".

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            person.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end

ryan = Person.new("ryan")
joey = Person.new("joey")
steve = Person.new("steve")
zac = Person.new("zac")


