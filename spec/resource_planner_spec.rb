# frozen_string_literal: true

require 'resource_planner'
describe ResourcePlanner do
  describe '#header' do
    it 'can get its title' do
      resource = ResourcePlanner.new

      expect(resource.heading).to eq 'Resources:'
    end
  end

  describe '#add_to_plan' do
    it 'adds a resource to plan' do
      resource_planner = ResourcePlanner.new

      expect(resource_planner.add_to_plan('Pencils')).to eq "Resources:\n• Pencils"
    end
  end
end
