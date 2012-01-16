class Squirrel
  attr_accessor :status
  def initialize
    puts "Updating Status from Twitter"
    begin
     @status = Twitter.user_timeline("common_squirrel").first.text
    rescue Exception=>e
     @status = "Sleeping"
     puts e.to_s
   end
  end
end
