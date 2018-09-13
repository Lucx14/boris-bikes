Makers boris bike challenge
---------------------------

A basic program to model the docking and releasing of shared bikes

Our week 1 pair programming project at Makers focused on learning and following a test driven approach to resolving user stories working with Ruby and RSpec as the testing framework and thinking about object-oriented design. The second focus was on learning to pair program, working with a different pair partner every day and following a 30 minute driver navigator cycle we worked through each feature.


Technologies & Principles
-------------------------
* Ruby
* RSpec
* Object-oriented Design
* Test-driven Development
* Git / GitHub


Installation Instructions
-------------------------

Clone the repository from github then change directory into it.

```
$ git clone git@github.com:Lucx14/boris-bikes
$ cd boris-bikes
```

Load dependencies with bundle.

```
$ gem install bundle
$ bundle
```

Load the app in irb.

```
$ irb
2.2.3 :001 > load './lib/bike.rb'
 => true
2.2.3 :002 > load './lib/docking_station.rb'
 => true

```

Run RSpec in the terminal to see tests passing:

```

Bike
  .working? returns true
  .report_broken - responds to method
  .report_broken - can be reported broken

DockingStation
  initialization
    @bikes - returns the instance variable @bikes
    @capacity - has a readable default capacity
  #release_bike
    .release_bike - does it create a bike object
    .release_bike - error when no bikes available
    .release_bike - releases working bikes
    .release_bike - does not release broken bikes
  #dock(bike)
    .dock(bike) returns a bike object in an array
    .dock(bike) - error when docking station is full

Finished in 0.0142 seconds (files took 0.08095 seconds to load)
11 examples, 0 failures

```


File Structure

```
.
├── README.md
├── lib
│   ├── bike.rb
│   └── docking_station.rb
└── spec
    ├── bike_spec.rb
    ├── docking_station_spec.rb
    └── spec_helper.rb

```



User Stories
------------

```

As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working.

As a member of the public,
so I can return bikes i've hired
I want to dock my bike at the docking station.

As a member of the public,
So I can decide whether to use the docking station
I want to see a bike that has been docked.

As a member of the public,
So that I am not confused and charged unnecessarily,
I'd like docking stations not to release bikes when there are none available.

As a maintainer of the system,
So that I can control the distribution of bikes,
I'd like docking stations not to accept more bikes than their capacity.

As a system maintainer,
So that I can plan the distribution of bikes,
I want a docking station to have a default capacity of 20 bikes.

As a system maintainer,
So that busy areas can be served more effectively,
I want to be able to specify a larger capacity when necessary.

As a member of the public,
So that I reduce the chance of getting a broken bike in future,
I'd like to report a bike as broken when i return it.

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations not to release broken bikes.

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations to accept returning bikes (broken or not).

```
