# SimilarStrings

Computes similarity score between 2 strings based on Sørensen–Dice coefficient (http://en.wikipedia.org/wiki/Dice's_coefficient)

## Installation

Add this line to your application's Gemfile:

    gem 'similar_strings'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install similar_strings

## Usage

`score = SimilarStrings.score(str1, str2)`

Score ranges from 0 to 1.0 with 1.0 being closely matched.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
