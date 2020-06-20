require 'printer'

describe Printer do
  it 'prints' do
    printer = Printer.new
    expect{printer.output("Plan")}.to output("Plan").to_stdout
  end 
  
end
