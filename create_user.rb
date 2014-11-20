#!/usr/bin/env ruby
require_relative 'model'

if ARGV.length < 2
  puts "Usage:\n#$0 username password"
  exit 1 
end
name, pass = ARGV.shift(2)
@user = User.new(:username => name, :password => pass)
@user.save
