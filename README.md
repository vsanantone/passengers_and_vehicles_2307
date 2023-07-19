# Passengers and Vehicles Instructions

## Iteration 1

## Setup

* Fork this Repository
* Clone YOUR fork
* Complete the activity below
* Push your solution to your fork
* Submit a pull request from your repository to the turingschool-examples repository
  * Make sure to put your name in your PR!

Use TDD to create a `Passenger` class that responds to the following interaction pattern. For the `adult?` method, a `Passenger` is considered an adult if they are age 18 or older.

```ruby
pry(main)> require './lib/passenger'
# => true

pry(main)> charlie = Passenger.new({"name" => "Charlie", "age" => 18})    
# => #<Passenger:0x00007fc1ad88b3c0...>

pry(main)> taylor = Passenger.new({"name" => "Taylor", "age" => 12})    
# => #<Passenger:0x00007fe0da2cf1b0...>

pry(main)> charlie.name
# => "Charlie"

pry(main)> charlie.age
# => 18

pry(main)> charlie.adult?
# => true

pry(main)> taylor.adult?
# => false

pry(main)> charlie.driver?
# => false

pry(main)> charlie.drive

pry(main)> charlie.driver?
# => true
```

## Iteration 2

Use TDD to create a `Vehicle` class that responds to the following interaction pattern:

```ruby
pry(main)> require './lib/vehicle'
# => true

pry(main)> require './lib/passenger'
# => true

pry(main)> vehicle = Vehicle.new("2001", "Honda", "Civic")    
# => #<Vehicle:0x00007fe0da9c63d8...>

pry(main)> vehicle.year
# => "2001"

pry(main)> vehicle.make
# => "Honda"

pry(main)> vehicle.model
# => "Civic"

pry(main)> vehicle.speeding?
# => false

pry(main)> vehicle.speed

pry(main)> vehicle.speeding?
# => true

pry(main)> vehicle.passengers
# => []

pry(main)> charlie = Passenger.new({"name" => "Charlie", "age" => 18})    
# => #<Passenger:0x00007fe0da1ec450...>

pry(main)> jude = Passenger.new({"name" => "Jude", "age" => 20})    
# => #<Passenger:0x00007fe0da2730e0...>

pry(main)> taylor = Passenger.new({"name" => "Taylor", "age" => 12})    
# => #<Passenger:0x00007fe0da2cf1b0...>

pry(main)> vehicle.add_passenger(charlie)    

pry(main)> vehicle.add_passenger(jude)    

pry(main)> vehicle.add_passenger(taylor)    

pry(main)> vehicle.passengers
# => [#<Passenger:0x00007fe0da1ec450...>, #<Passenger:0x00007fe0da2730e0...>, #<Passenger:0x00007fe0da2cf1b0...>]

pry(main)> vehicle.num_adults
# => 2
```

## Iteration 3

You have been contracted by the National Park Service to create a program that can track revenue for its parks. Specifically, they would like you to implement the following features:

  1. Create a `Park` class. Each park has a `unique name` and `admission price`, as well as a way to read that data.
  2. Each park has `vehicles` that entered the park, as well as a way to read that data.
  3. Each park can list all `passengers` that were in the vehicles that entered the park. 
  4. Each park can calculate `revenue` generated. Revenue is generated by charging the admission price per adult that entered the park.

Build upon your existing code from the first two iterations to implement this functionality.

Method Name                 | Return Value (type)
-----------                 | -------------------
`name`                      | `String`
`admission_price`           | `integer`
`vehicles`                  | `Array` of `Vehicle` objects
`add_vehicle(vehicle)`      | `vehicles` (`Array` of `Vehicle` objects)
`passengers`                | `Array` of `Passenger` objects
`revenue`                   | `Integer` 


## Iteration 4

The National Park Service has given you additional functionality it would like you to implement. They would like to be able to track patrons of their parks. 

1. Generate a list of all `all_attendees` names, sorted alphabetically.
2. Generate a list of all `minors` names, sorted alphabetically.
3. Generate a list of all `adults` names, sorted alphabetically.

Method Name                 | Return Value (type)
-----------                 | -------------------
`all_attendees`             | `Array` of all attendees names as `Strings`
`minors`                    | `Array` of attendees names who are minors as `Strings`
`adults`                    | `Array` of attendees names who are adults as `Strings`
