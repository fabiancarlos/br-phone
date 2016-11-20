require 'spec_helper'
describe Br_phone do

  VALID_PHONES = ['+5565425492527', '5565425492527', '065425492527', '0146533421647']
  INVALID_PHONES = ['+55654254925', '-5565425492527', '65425492527', '33421647', 'AAASBB', 'exit()', '', '556542549252!', '+55 65 42549252', '+55 65 842549252']
  
  before(:each) do
    @cell_phone_1 = Br_phone.generate_cell_phone
    @cell_phone_2 = Br_phone.generate_cell_phone
  end

  20.times.collect do
    describe "#generate_cell_phone" do
      it "return a valid cell phone number" do
        expect(Br_phone.new(@cell_phone_1).return_valid.size).to eq(14)
        expect(Br_phone.new(@cell_phone_1).return_valid).to_not eq('')
        expect(Br_phone.new(@cell_phone_1).return_valid[0,3]).to eq('+55')
      end

      it "return a randon cell phone number" do
        expect(@cell_phone_1).to_not eq(@cell_phone_2)
      end
    end
  end

  VALID_PHONES.each do |phone|
    describe "#phone_is_valid? (#{phone})" do
      it "return phone if is valid" do
        expect(Br_phone.new(phone).return_valid).to be_truthy
      end
    end
  end

  INVALID_PHONES.each do |phone|
    describe "#phone_is_valid? (#{phone})" do
      it "return nil if is invalid" do
        expect(Br_phone.new(phone).return_valid).to be_falsey
      end
    end
  end
end
