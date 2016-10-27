gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/person'
require 'pry'

class PersonTest < Minitest::Test
   
    def test_person_exists
      assert_instance_of Person, Person.new("Minerva", 1000)
    end 

    def test_person_has_a_name
      person = Person.new("Minerva", 1000)
      assert_equal "Minerva", person.name
    end

    def test_person_has_money
        person = Person.new("Minerva", 1000)
        assert_equal 1000, person.money
    end

    def test_person_has_accounts_hash
        person = Person.new("Minerva", 1000) 
        assert_equal Hash, person.accounts.class  
      end
end   