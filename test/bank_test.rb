gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/bank'
require 'pry'

class BankTest < Minitest::Test

    def test_can_make_a_bank
        assert_instance_of Bank, Bank.new("")
    end

    def test_bank_can_hold_a_name
        bank = Bank.new("JP Morgan Chase")
        assert_equal "JP Morgan Chase", bank.name
    end

    def test_we_can_create_an_account
        chase = Bank.new("JP Morgan Chase")
        minerva = Person.new("Minerva", 1000)
        assert_equal "An account has been opened for Minerva with JP Morgan Chase.",  chase.open_an_account(minerva)
    end

    def test_it_deposits
        chase = Bank.new("JP Morgan Chase")
        minerva = Person.new("Minerva", 1000)
        chase.open_an_account(minerva)
        assert_equal "Minerva has deposited 750 in JP Morgan Chase. Balance: 750 Cash: 250", chase.deposit(minerva, 750)
    end
end