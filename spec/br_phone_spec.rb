require 'spec_helper'
describe Br_phone do

  VALID_PHONES = ['+5565425492527', '5565425492527', '065425492527', '0146533421647']
  INVALID_PHONES = ['+55654254925', '65425492527', '33421647', 'AAASBB', 'exit()', '', '556542549252!', '+55 65 42549252', '+55 65 842549252']

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

  VALID_PHONES.each do |phone|
    describe "#phone_is_valid?" do
      it "return true if phone is valid" do
        expect(Br_phone.phone_is_valid? phone).to eq(true)
      end
    end
  end

  INVALID_PHONES.each do |phone|
    describe "#phone_is_valid?" do
      it "return false if phone is invalid" do
        expect(Br_phone.phone_is_valid? phone).to eq(false)
      end
    end
  end
end
