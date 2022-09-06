# your code goes here
# Person.new(name)
class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account, :friend
    # Person initialization and attributes #name= a new person instance cannot overwrite the name they were instantiated with
    def initialize(name)
        @name = name
    end

    # Person.new(name).name
    def name
        @name
    end

    # bank_account a new person instance is initialized with a bank_account balance of $25
    def bank_account
        @bank_account = 25
    end

    # bank_account=allows a person to change their bank account amount
    def bank_account=(amount)
        @bank_account = amount
    end

    #  happiness a new person instance is initialized with a happiness of 8
    def happiness
        @happiness = 8
    end

    # happiness= allows a person to change their happiness amount
    # happiness= does not allow a person to change their happiness above 10
    # happiness= does not allow a person to change their happiness below 0
    def happiness=(happiness)
        if happiness > 10
            @happiness = 10
        elsif happiness < 0
            @happiness = 0
        else
            @happiness = happiness
        end
    end

    # Person#hygiene: gets the value of the person's hygiene points
    def hygiene
        @hygiene
    end

    # Person#hygiene=(value): sets the value of the person's hygiene points. The maximum value allowed is 10, and the minimum value allowed is 0
    def hygiene=(value)
        if value > 10
            @hygiene = 10
        elsif value < 0
            @hygiene = 0
        else
            @hygiene = value
        end
    end

    # Person#clean?: returns true if the person's hygiene is more than seven; otherwise, it returns false.
    def clean?
        @hygiene > 7
    end

    # Person#happy?: returns true if the person's happiness is more than seven; otherwise, it returns false.
    def happy?
        @happiness > 7
    end

    # Person#status: returns a string indicating the person's status. If the person is happy and clean, it returns "happy and clean". If the person is happy but not clean, it returns "happy and not clean". If the person is not happy and clean, it returns "not happy and clean". If the person is not happy and not clean, it returns "not happy and not clean".
    def status
        if clean? && happy?
            "happy and clean"
        elsif clean? && !happy?
            "happy and not clean"
        elsif !clean? && happy?
            "not happy and clean"
        else
            "not happy and not clean"
        end
    end

    # Person#get_paid(amount): accepts a salary amount and adds this to the person's bank account. The method should return the string "all about the benjamins".
    def get_paid(amount)
        @bank_account += amount
        "all about the benjamins"
    end

    # Person#take_bath: increments the person's hygiene points by four and returns the string "♪ Rub-a-dub just relaxing in the tub ♫".
    def take_bath
        @hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    # Person#work_out: increments the person's happiness by two points, decreases their hygiene by three points, and returns the Queen lyrics, "♪ another one bites the dust ♫".
    def work_out
        @happiness += 2
        @hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    # Person#call_friend(friend): accepts another instance of the Person class, or "friend". The method should increment the person and the friend's happiness points by three. It should also return a string. For example, if Stella calls her friend Felix, the method increment both Stella and Felix's happiness points and then return "Hi Felix! It's Stella. How are you?".
    def call_friend(friend)
        @happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    # Person#start_conversation(friend, topic): accept two arguments, the friend to start a conversation with and the topic of conversation.
    # If the topic is politics, both people get sadder (their happiness decreases by 2) and the method returns "blah blah partisan blah lobbyist".
    # If the topic is weather, both people get a little happier (their happiness increases by 1) and the method returns "blah blah sun blah rain".
    # If the topic is not politics or weather, their happiness points don't change and the method returns "blah blah blah blah blah".
    def start_conversation(friend, topic)
        if topic == "politics"
            @happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            @happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end
