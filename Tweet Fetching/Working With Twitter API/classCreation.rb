class MyClass
  def initialize
    puts "This is the initialize method."
  end
end

MyClass.new

#working with classes
class Name
  attr_accessor :title,:first_name, :middle_name, :last_name
  attr_reader :first_and_middle_name
  
  
  def initialize(title, first_name, middle_name, last_name)
    @title = title
    @first_name = first_name
    @middle_name = middle_name
    @last_name = last_name
  end
  
  def full_name
    @first_and_middle_name = @first_name + " " + @middle_name
    
    #@first_name + " " + @middle_name + " " + @last_name  
    @first_and_middle_name + " " + @last_name
  end
  
  def full_name_with_title
  @title + " " + full_name()  
  end
  
end



name = Name.new("Mr.", "Alex", "O", " Cevallos")
puts name.full_name_with_title

puts "Title: #{name.title}"
name.title = "Dr."
puts "Title: #{name.title}"

wame = Name.new("Mr.", "Nick", "", "Pettit")
puts wame.full_name_with_title

#completed bank account assignment
class BankAccount 
  attr_reader :name
  def initialize(name)
    @name = name
    @transactions = []
    add_transaction("Beginning Balance", 0)
  end
  
  def credit(description, amount)
    add_transaction(description, amount)
  end
  
  def debit(description, amount)
    add_transaction(description, -amount)  
  end
  
  def add_transaction(description, amount)
    @transactions.push(description: description, amount: amount)
  end
  
  def balance
    balance = 0
    @transactions.each do |transaction|
      balance += transaction[:amount]
    end
    return balance
    
  end
  
  def to_s
    "Name: #{name}, Balance: #{sprintf("%0.2f", balance)}"
   end

  def print_register
    puts "#{name}'s Bank Account"
    puts "Description".ljust(30) + "Amount".rjust(10)
    
    @transactions.each do |transaction|
      puts transaction[:description].ljust(30) + sprintf("%0.2f", transaction[:amount]).rjust(10)
     end
    puts "Balance: #{sprintf("%0.2f", balance)}"
    
  #extra credit 
  @transactions.inject(0) {|sum, h| sum + h[:amount].to_i}
  
  end

  
end

bank_account = BankAccount.new("Jason")
bank_account.credit("Paycheck", 100)

bank_account.debit("Groceries", 40)
puts bank_account
puts "Register:"
bank_account.print_register

