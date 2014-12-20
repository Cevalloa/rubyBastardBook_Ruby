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