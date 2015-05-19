# This Program will Create a list of all the possibly phone numbers in Israel
# Using Carriar as of which list you want to generate (or all)
# Made by Bar Hofesh <bar.hofesh at safe-t.com>

class Generator

  def self.get_initiator
    puts "please enter the initiator num\r\nFor example 050,052,054 etc..."
    print "initiator: "
    initiator = read
    if initiator
      initiator = initiator.chomp
      gen(initiator)
    end
  end
  def self.gen(initiator)
    t_n = 0..9999999
    t_n.each do |num|
      puts "#{initiator}%07d" % num
    end
  end
end

Generator.get_initiator