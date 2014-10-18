 Airport
=========

Third Challenge at makers Academy, airport.

A plane currently in the airport can be requested to take off.

 No more planes can be added to the airport, if it's full.
 It is up to you how many planes can land in the airport and how that is implemented.

 If the airport is full then no planes can land

 Include a weather condition using a module.
 The weather must be random and only have two states "sunny" or "stormy".
 Try and take off a plane, but if the weather is stormy, the plane can not take off and must remain in the airport.
 
 This will require stubbing to stop the random return of the weather.
 If the airport has a weather condition of stormy,
 the plane can not land, and must not be in the airport


 When we create a new plane, it should have a "flying" status, thus planes can not be created in the airport.

 When we land a plane at the airport, the plane in question should have its status changed to "landed"

 When the plane takes of from the airport, the plane's status should become "flying"


 grand final
 Given 6 planes, each plane must land. When the airport is full, every plane must take off again.
 Be careful of the weather, it could be stormy!
 Check when all the planes have landed that they have the right status "landed"
 Once all the planes are in the air again, check that they have the status of flying!

## How to run the test

1. `> clone https://github.com/byverdu/airport.git`
2. `> cd airport`
3. `> rspec -fd`

## How to use it

1. `> clone https://github.com/byverdu/airport.git`
2. `> cd airport`
3. `> irb`

```ruby
> require './lib/loader'

> vueling = Plane.new() # @status = 'flying'
> gatwick = Airport.new()

> gatwick.track_to_land vueling # calls vueling.land!

> gatwick.track_to_take_off vueling # calls vueling.take_off!

```













