require 'spec_helper'

describe Subject do
  context 'Respond to' do
  	it { should respond_to :name }
  	it { should respond_to :description }
  end
  context 'functionality' do
  	context 'should have a name'	
  		before :each do
  			@subject = FactoryGirl.build :subject
  		end
	  	it "can't save without a name" do
	  		@subject.name = nil
	  		@subject.save.should be_false
	  	end
	  	it 'should save with correct data' do
	  		@subject.save.should be_true
	  	end
  end
end
