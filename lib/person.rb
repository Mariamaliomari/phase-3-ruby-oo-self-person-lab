# your code goes here
class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
  
    def initialize(name)
        @name = name
        @happiness = 8
        @bank_account = 25
        @hygiene = 8
    end
  
    def happiness=(num)
        @happiness = if num > 10
            10
        elsif num < 0
            0
        else
            num
        end
    end
  
    def hygiene=(num)
        @hygiene = if num > 10
            10
        elsif num < 0
            0
        else
            num
        end
    end
  
    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins"
    end
  
    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
  
    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end
  
    def clean?
        self.hygiene > 7
    end
  
    def happy?
        self.happiness > 7
    end
  
    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
  
    def start_conversation(friend, topic)
        if topic == "politics"
            [self, friend].each do |person|
                person.happiness -= 2
            end
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            [self, friend].each do |person|
                person.happiness += 1
            end
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
  
  end
# class Person
#     attr_reader :name, :bank_account, :happiness, :hygiene
  
#     def initialize(name)
#       @name = name
#       @bank_account = 25
#       @happiness = 8
#       @hygiene = 8
#     end
  
#     def bank_account=(amount)
#       @bank_account = amount
#     end
  
#     def happiness=(amount)
#       @happiness = [0, [10, amount].min].max
#     end
  
#     def hygiene=(amount)
#       @hygiene = [0, [10, amount].min].max
#     end
  
#     def happy?
#       happiness > 7
#     end
  
#     def clean?
#       hygiene > 7
#     end
  
#     def get_paid(amount)
#       @bank_account += amount
#       'all about the benjamins'
#     end
  
#     def take_bath
#       self.hygiene = 10
#       "♪ Rub-a-dub just relaxing in the tub ♫"
#     end
  
#     def work_out
#       self.happiness = [happiness + 2, 10].min
#       self.hygiene = [hygiene - 3, 0].min
#       "♪ another one bites the dust ♫"
#     end
  
#     def call_friend(friend)
#       self.happiness = [happiness + 1, 10].min
#       friend.happiness = [friend.happiness + 1, 10].min
#       "Your friend #{friend.name} is now happy!"
#     end
  
#     def start_conversation(friend, topic)
#       if topic == "politics"
#         self.happiness = [happiness - 2, 0].min
#         friend.happiness = [friend.happiness - 2, 0].min
#         "bleh, I don't want to talk about politics"
#       elsif topic == "weather"
#         self.happiness = [happiness + 1, 10].min
#         friend.happiness = [friend.happiness + 1, 10].min
#         "lets talk about the sun!"
#       else
#         "that sounds like a good topic"
#       end
#     end
#   end