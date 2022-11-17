# Autor
Autor: Francesco Marelli
Practica 8: Gema Parking y herencia de clases

# Parking
This gem represents a Parking zone. Including different data structures that represent Vehicles, Motor Vehicles (herency),  Parking Data, Parking Spots and Functions.
The main structure of the gem was generated by bundle.
Another gem used trhough bundle is guard, a tool that give to developers  agility and speed  by checking the errors in another terminal: This terminal will be 'listening' to each change made in the spec file, launching the test result if is ok or if it has some errors.
This is gem has been done using the TDD working method.

In the project are distiguished the main 'Parking/bin', 'Parking/doc', 'Parking/spec' 'Parking/lib' driectories:

    1. bin/ contains two files: console and setup. 

        a. setup is a scripy that contains all the automated setup is needed to be done 
        b. console is a ruby file which includea require "bundler/setup"  (The setup script) 
            require "Parking" (Gem)

    2. doc/ is an embedded documentatoin generator for Ruby. After analyzing all source code
         it generate a structured collection of pages for ruby objects and method. It supports
          HTML, CHM, XML   output formats to be written

    3. spec/ contains two important ruby files: spec_helper.rb and Parking_spec.rb
        a. spec_helper includes the Parking gem and the setup script.
        b. Parking_spec.rb contains the whole list of expects that test the results for every
         method, attribute, variable, class and module of Parking Gem.
    
    4. lib/ contains a  directory with all the classes created in this gem and an extra default
         file which goal is to include all classes into the module Parking.
        a. Parking.rb default file which goal is to include all classes into the module Parking.
        b. Parkig/
            a. Data.rb : Contains all the data information about a Parking as Number of spots, 
            Number of free spots, Description, Type of Parking, Identification number, Security 
            and accessibility variables and also methods that return f.e. the number of the occupied 
            spots or the string format overload method.

            b. Functions.rb : contains constants as IS_FREE or IS_COMPLETE to check wheather the parking 
            is full or empty. Then a class Function that is needed to check the status of the parking by 
            checking it through those constants.

            c. Vehiculo.rb: Is a father class to Motor. This class represent Vehicle as device suitable for 
            driving on the roads affected by the Traffic Law. To_s method is also overloaded as <=> that is 
            used through comparable module. Also a global variable as @@n_instances that keeps adding every 
            new instance of a vehicle.
            A method to calculate the volume of a vehicle also as vehicles have to be comparable through it:
             Same volume means vehicles are equal.

            d. Motor.rb: This class is inherited from Vehiculo. Attributes are number of wheels, number of seats,
             power in cm³ and max speed.
            To_s methos is overloades to print a correct format of the string.
            Also is included into Comparable module to compare two different Motor object through their number of seats.

            e. ParkingSpot.rb: This class define a single parking spot through three attributes: Height, Length, Width.
             It also has a constructor and getters for all the attributes.

            f. version.rb : Contains the version number of the gem contained in a constant

## Git structure

    Inside the directory Parking/Parking there is a git repository, remotely called ghp07.
    The branches that have been used are: dev, doc, tdd and main:
        a. main branch includes only the default initialization of the directory
        b. dev branch is the one where all the tdd has been taken to: Expectations and the whole functional, 
        class and test coding.
        c. doc contains the documentation part through rdoc and commenting all files.
        d. tdd is a merged branch which will contain the final result of doc and dev into all one.

    The merge has been done like follows:
        a. coding and tdd into dev
        b. Then we move to doc branch to generate documentation
        ```bash
        git checkout 'doc'
        ```
        ```bash
        rdoc 
        ```
        c. Then we merge it with dev
        ```bash
        git merge 'doc'
        ```
        d. Then we move to tdd
        ```bash
        git checkout 'tdd'
        ```
        e. Now we merge the last version (doc+dev) into tdd to have the final version
        ```bash
        git merge 'tdd'
        ```


    

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
```bash
$ bundle exec guard
```


then you will be able to see the results of the code on real time. If data is well introduced and how the errors are managed.


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ULL-ESIT-LPP-2223/gema-francesco-marelli-alu0101161730. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/ULL-ESIT-LPP-2223/gema-francesco-marelli-alu0101161730/blob/tdd/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Parking project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/ULL-ESIT-LPP-2223/gema-francesco-marelli-alu0101161730/blob/tdd/CODE_OF_CONDUCT.md).
