require './lib/passenger'

RSpec.describe Passenger do
  before(:each) do
		@charlie = Passenger.new({"name" => "Charlie", "age" => 18})
		@taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 
	end

	it 'can initialize' do
		expect(@charlie).to be_a(Passenger)
		expect(@taylor).to be_a(Passenger)
	end

	it 'can read attributes' do
		expect(@charlie.name).to eq("Charlie")
		expect(@charlie.age).to eq(18)
		expect(@taylor.name).to eq("Taylor")
		expect(@taylor.age).to eq(12)
	end

	it 'is adult?' do
		expect(@charlie.adult?).to eq(true)
		expect(@taylor.adult?).to eq(false)
		require 'pry'; binding.pry
	end

	it 'can drive' do
		expect(@charlie.driver?).to eq (false)
		@charlie.drive
		expect(@charlie.driver?).to eq (true)
	end
end
