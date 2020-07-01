class Printer
  def initialize
    
  end

  def output(plan)
    plan.each do | row|
      puts row.questions
    end 
  end 
end