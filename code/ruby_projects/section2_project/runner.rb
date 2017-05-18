require 'pp'
require_relative 'user'

user = User.new 'a@email.com', 'A'

pp user

user.save