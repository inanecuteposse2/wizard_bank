class Person
    attr_reader :name, :accounts
    attr_accessor :money

  def initialize(name, money)
      @name = name
      @money = money
      @accounts = Hash.new
  end


end





