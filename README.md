# yourl CLI Toolkit

CLI to interface with yourl link storage service. 

## Installation

Install it:

    $ gem install yourl_cli


## Usage
Set it up, run and follow prompts (will store creds file at ~/.yourl by default):

    $ yourl_cli --setup 
    
    Enter API Key: ... 

Run it:

    $ yourl_cli -u https://www.google.com -c my_category
    
Help:

    $ yourl_cli --help
    
    Usage: yourl_cli [options]
        -s, --setup                         Set up yourl integration
        -u, --url=url                       URL to store
        -c, --category=cat                  Category to add it to
        -h, --help                          Prints this help
 

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/yourl_cli. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
