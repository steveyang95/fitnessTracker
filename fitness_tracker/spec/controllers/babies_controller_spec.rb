require "rails_helper"

RSpec.describe BabiesController, :type => :controller do
  describe "Create Baby" do
  	it "creates a baby successfully" do
	    @baby = Baby.create(first_name: "Test", last_name: "example", birthday: "1/1/1")
	    expect(@baby).to be_an_instance_of Baby
		end
  end
end