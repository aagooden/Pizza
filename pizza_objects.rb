class Computer
  
  @@users = {}
  def initialize(username, password)
    @username = username
    @password = password
    @files = {}
    @@users[username] = password
  end
  
  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "A new file was created"
    puts "Filename: #{filename}"
    puts "Username: #{@username}"
    puts "Time: #{time}"
  end
  
  def Computer.get_users
    @@users
  end
end

my_computer = Computer.new("cheese", "whiz")
my_computer.create("crackers")
puts Computer.get_users
puts ""

5.times do |x|
  Computer.new("Pizza #{x+1}", "Pepperoni")
  
end

puts Computer.get_users