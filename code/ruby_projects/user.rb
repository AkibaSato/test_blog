module Destructable
    def destroy(anyobject)
        puts "I will destroy the object"
    end
        
end


class User
    include Destructable
    attr_accessor :name, :email
    def initialize (name, email)
        @name = name
        @email = email
    end
    
    def run
        puts "I'm running"
    end
    
    def self.identify_yourself
        puts "I am a class method"
    end
end

class Buyer < User
    def run
        puts "I'm not running"
    end
end

class Seller < User
end

class Admin < User
end

user1 = User.new("Akiba", "akibasato1992@gmail.com")
puts "User's name is #{user1.name} and the email is #{user1.email}."
user1.name = "A"
user1.email = "a@gmail.com"
puts "User's new name is #{user1.name} and new email is #{user1.email}."

buyer1 = Buyer.new("B", "b@gmail.com")
buyer1.run

seller1 = Seller.new("C", "c@gmail.com")
seller1.run

admin1 = Admin.new("D", "d@gmail.com")
admin1.run

puts Buyer.ancestors

User.identify_yourself
user1.destroy("myname")