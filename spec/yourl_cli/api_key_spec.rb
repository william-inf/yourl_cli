RSpec.describe YourlCli::APIKey do
  describe 'save api key' do

    before :all do
      @test_key = SecureRandom.uuid
    end

    it "should fail without when not setup" do
      if File.exist? YourlCli::APIKey::CREDS_FILE_LOCATION
        File.delete YourlCli::APIKey::CREDS_FILE_LOCATION
      end

      expect { YourlCli::APIKey.new }.to raise_error(RuntimeError)
    end

    it "should store a key" do
      api_key = YourlCli::APIKey.save_api_key(@test_key)
      expect(api_key.api_key).to eq(@test_key)
    end

    it "should fetch an existing key" do
      api_key = YourlCli::APIKey.new
      expect(api_key.api_key).to eq(@test_key)
    end
  end
end
