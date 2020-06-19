# frozen_string_literal: true

require 'planner'

describe Planner do
  describe '#get_welcome_message' do
    it 'returns a welcome message' do
      planner = Planner.new
      welcome_message = 'Welcome to the Provocation Station Planning Tool'

      expect(planner.get_welcome_message).to eq welcome_message
    end
  end

  describe '#add_resource' do
    it 'adds a resource to plan' do
      planner = Planner.new

      expect(planner.add_resource('Pencils')).to eq 'Pencils'
    end

    it 'adds multiple resources' do
      planner = Planner.new

      planner.add_resource('Pencils')
      expect(planner.add_resource('Paint')).to eq "Pencils\nPaint"
    end
  end

  describe '#add_question' do
    it 'adds a question to planner' do
      planner = Planner.new  

      expect(planner.add_question('What else could you add?')). to eq 'What else could you add?'
    end

    it 'adds multiple questions to planner' do
      planner = Planner.new  

      planner.add_question('What else could you add?')
      expect(planner.add_question('Why did you choose those materials?')). to eq "What else could you add?\nWhy did you choose those materials?"
    end
  end
end
