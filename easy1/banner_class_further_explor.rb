class Banner
  attr_reader :message, :width
  SPACE = " "
  SMALL_DASH = "-" 
  VERTICAL_LINE = "|"
  PLUS_SIGN = "+"
  
  def initialize(message, width=50)
    @message = message
    @width = width
  end
  
  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end 
  
  private
  
  def horizontal_rule
    PLUS_SIGN + SMALL_DASH + (SMALL_DASH * (width - 4)) + SMALL_DASH + PLUS_SIGN
  end 
  
  def empty_line
    VERTICAL_LINE + SPACE + (SPACE * (width - 4)) + SPACE + VERTICAL_LINE
  end
  
  def message_line
    VERTICAL_LINE + SPACE + "#{@message.center(width - 4)}" + SPACE + VERTICAL_LINE
  end 
  
  def centerialize
    self.center(width)
  end
  
end   

banner = Banner.new('To boldly go where no one has gone before.', 80)
puts banner

banner = Banner.new('')
puts banner

banner = Banner.new("DAnce")
puts banner
  
