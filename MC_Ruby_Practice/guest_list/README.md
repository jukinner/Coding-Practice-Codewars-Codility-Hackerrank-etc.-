# GuestList

The Guest List gem will help you manage events and a list of guest for an event.  Your job is to get all the
tests to pass by implementing the logic within the library code.

## Installation

Be sure you have Ruby installed (2.3 so it'll match what we use here at MasterControl) as well as bundler then clone this repository.

And then execute:

    $ bundle install 

## What do you do?

You can create a list of events and add guests to the event.  Implement the guts of the methods using idiomatic ruby.  You
may find it helpful to use the ruby documentation more specifically the [Enumerable](https://ruby-doc.org/core-2.3.3/Enumerable.html)
module methods to help you out.

## You may not

You will be tempted to write this out using some other programming language's paradigm or flow.  Don't do it.  Specifically
you **can't** use `for` syntax anywhere in your code.  Also you should steer away from explicitly declaring accumulator variables.
If you need to accumulate a value look for methods that will give that to you as a returned result.

## Test it yo!

Run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.
