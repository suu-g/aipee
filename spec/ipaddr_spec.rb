require 'spec_helper'

describe IPAddr do
  describe "#+" do
    it "should be able to add numericals to v4 address" do
      expect(
        (IPAddr.new("192.0.2.1") + 1).to_s
      ).to eq("192.0.2.2")
    end

    it "should be able to add IPAddr to v4 address" do
      expect(
        (
          IPAddr.new("192.0.2.1") + 
          IPAddr.new("0.20.0.20")
        ).to_s
      ).to eq("192.20.2.21")
    end

    it "should be able to add string to v4 address" do
      expect(
        result = (IPAddr.new("192.0.2.1") + "0.20.0.20").to_s
      ).to eq("192.20.2.21")
    end
  end
end
