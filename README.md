# Trump

Add a gem to the Gemfile with more info in comments. This will not add it directly met add it to your clipboard, so you can easily past it where you want inside your Gemfile.

Below is an example of the output in the Gemfile:

    # This is the gem description
    # [gemname](http://gemurl.com)
    gem "gemname", "0.0.1"

Credits for this gem go to [@junkiesxl](http://twitter.com/junkiesxl), he created an emacs function to do this. But I use Vim so... I created a gem for it!

## Installation

Install the gem:

    $ gem install trump

## Usage

There is only one command and this is explained below.

### Add

Run the following command followed by the name of the gem.

    trump gemname

Both commands are the same.

Now open your Gemfile and paste the content of you clipboard. It's that simple!

## TODO

- Choose the git version

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
