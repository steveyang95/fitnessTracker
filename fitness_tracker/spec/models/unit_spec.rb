require "rails_helper"

RSpec.describe Unit, :type => :model do
  describe "Conversion" do
  	it "convert from inch to centimeter" do
  		height = Unit.create({value: 10, unit_name: "H", metric: true})
	    height.inch_to_centimeter(height.value)
	    expect(height.value).to eq(25.4)
		end

	it "convert from centimeter to inch" do
  		height = Unit.create({value: 50.8, unit_name: "H", metric: false})
	    height.centimeter_to_inch(height.value)
	    expect(height.value).to eq(20)
		end

	it "convert from kilogram to pound" do
  		weight = Unit.create({value: 100, unit_name: "W", metric: false})
	    weight.kilogram_to_pound(weight.value)
	    expect(weight.value).to eq(220)
		end

	it "convert from pound to kilogram" do
  		weight = Unit.create({value: 110, unit_name: "W", metric: true})
	    weight.pound_to_kilogram(weight.value)
	    expect(weight.value).to eq(50)
		end

	it "convert from celsius to fahrenheit" do
  		temperature = Unit.create({value: 35, unit_name: "T", metric: false})
	    temperature.celsius_to_fahrenheit(temperature.value)
	    expect(temperature.value).to eq(95)
		end

	it "convert from fahrenheit to celsius" do
  		temperature = Unit.create({value: 32, unit_name: "T", metric: true})
	    temperature.fahrenheit_to_celsius(temperature.value)
	    expect(temperature.value).to eq(0)
		end

  	it "convert from inch to centimeter - wrong result" do
  		height = Unit.create({value: 10, unit_name: "H", metric: true})
	    expect(height.inch_to_centimeter(height.value) == 30).to be false
		end

  	it "convert from inch to centimeter - passing wrong object" do
  		height = Unit.create({value: 10, unit_name: "H", metric: true})
	    expect{height.inch_to_centimeter(height) == 25.4}.to raise_error(NoMethodError)
		end

	it "check constant" do
	    expect(Unit::YARD == 91.44).to be true
		end
  end
end