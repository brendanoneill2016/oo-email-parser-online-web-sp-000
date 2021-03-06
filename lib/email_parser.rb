# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'


class EmailParser
  attr_accessor :emails 
  

  def initialize(emails)
    
    array = emails.split(",")
    
    list = array.collect do |str|
      str.split(" ")
    end
    
    @emails = list.flatten
    
  end
  

  def parse
    @emails.uniq 
  end
    
end



