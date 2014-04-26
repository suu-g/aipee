# Aipee

Aipee is an `IPAddr` class extention suite. It adds many useful methods into `IPAddr` class.

## Installation

Add this line to your application's Gemfile:

    gem 'aipee'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install aipee

## Usage

    require 'aipee'

    IPAddr.new("192.0.2.0") + 100  #=> 192.0.2.100

    IPAddr.new("127.0.0.0/8").each do |addr|
      addr    #=> "127.XX.YY.ZZ/8"
    end

## Contributing

1. Fork it ( https://github.com/[my-github-username]/aipee/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
