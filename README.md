# Playgrounds
Repo where I experiment things using Swift and Playgrounds.

## Lazy var initialization

The point of this Playground was to see what would happen when a lazy initialised value is set to nil, then called again.
As one could have expected, the value stays nil and is never re-initialized.

## GenericList

This is my experiment with generics. The point is to have a GenericList which is basically a Dictionary and have a subblass of this GenericList with a custom initializer. Sadly, I get an error with NSDate which doesn't seem to be Hashable. Weird, isn't ?
