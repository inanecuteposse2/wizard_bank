require_relative "person"

class Bank < Person
    attr_reader :name

    def initialize(name)
        @name = name          
    end

    def open_an_account(person)
       bank_name = @name
        person.accounts[bank_name] = 0
        "An account has been opened for #{person.name} with #{bank_name}."
    end

    def deposit(person, amount)
        bank_name = @name
        person.accounts[bank_name] += amount
        person.money -= amount
        "#{person.name} has deposited #{amount} in #{bank_name}. Balance: #{person.accounts[bank_name]} Cash: #{person.money}"
    end
end
