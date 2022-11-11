# Autor
Francesco Marelli
Practica 7: Create your Own Gem: Parking 
# Parking
This gem represents a Parking Lot. Its divided in very directories generated by bundle. The interesting thing about this gem also is the agility to check the errors due to the guard script that check the changes in the rspec file to see if code is ok.
This is gem has been done using the TDD working method.

In the class Data there is the information about parking like: free spots, total spots, kind of parking, name, id.
In the  Function status there is a function that return the status of the parking.
in the ParkingSpot file, there is the ParkingSpot class, ever parking has a number of parking spots which have 3 characteristics: Width, Height, Length.

The Rspec file work with many types of expectations that check over the type of data if is correct or not.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'Parking'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install Parking

## Usage

First open a new Terminal, where you are going to run guard. So, move Parking/Parking directory, then run:
 $ bundle exec guard 

then you will be able to see the results of the code on real time. If data is well introduced and how the errors are managed.


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[FrancescoMarelli]/Parking. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[FrancescoMarelli]/Parking/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Parking project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[FrancescoMarelli]/Parking/blob/master/CODE_OF_CONDUCT.md).
