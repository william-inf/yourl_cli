RSpec.describe YourlCli::Validators do
  describe 'url validation' do
    it "should pass valid url" do
      valid_url = 'https://www.google.com'
      expect(YourlCli::Validators.valid_url?(valid_url)).to eq(true)
    end

    it "should fail invalid url" do
      invalid_url = 'a fake url'
      expect(YourlCli::Validators.valid_url?(invalid_url)).to eq(false)
    end

    it "should fail an empty url" do
      expect(YourlCli::Validators.valid_url?(nil)).to eq(false)
    end
  end
end
