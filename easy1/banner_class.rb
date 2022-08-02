class Banner
  attr_reader :message
  SPACE = " "
  SMALL_DASH = "-" 
  VERTICAL_LINE = "|"
  PLUS_SIGN = "+"
  
  def initialize(message)
    @message = message
  end
  
  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end 
  
  private
  
  def horizontal_rule
    PLUS_SIGN + SMALL_DASH + (SMALL_DASH * message.size) + SMALL_DASH + PLUS_SIGN
  end 
  
  def empty_line
    VERTICAL_LINE + SPACE + (SPACE * message.size) + SPACE + VERTICAL_LINE
  end
  
  def message_line
    "| #{@message} |"
  end 
  
end   

banner = Banner.new('To boldly go where no one has gone before.')
puts banner

banner = Banner.new('')
puts banner

  
