require_relative 'factory'

Customer = Factory.new(:name, :adress) do
  def greeting
    puts 'helooooooo'
  end

  def goodbye
    puts 'bye man'
  end
end

customer = Customer.new('Vadim', 'Ukraine, Kharkiv')
customer.greeting
customer.goodbye
