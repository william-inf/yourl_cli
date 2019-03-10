module YourlCli

  # Validator for command line arguments
  class Validators

    URL_REGEX = /^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$/ix

    def self.valid_url?(url)
      URL_REGEX.match? url
    end

  end
end