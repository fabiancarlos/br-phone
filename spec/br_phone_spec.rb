require 'spec_helper'
describe Br_phone do
  describe "#generate_cell_phone" do
  	it "return a cell phone number" do
  		cell_phone = Br_phone.generate_cell_phone

  		expect(cell_phone[0,3]).to eq('+55')
  		expect(cell_phone[3,2]).to eq('65')
  	end

  	it "return a randon cell phone number" do
  		cell_phone_01 = Br_phone.generate_cell_phone
  		cell_phone_02 = Br_phone.generate_cell_phone

  		expect(cell_phone_01).to_not eq(cell_phone_02)
  	end
  end
end
