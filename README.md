# Adminlte Generators

AdminLTE generators provides easy [AdminLTE](http://almsaeedstudio.com/AdminLTE) integration with Rails 4. 
AdminLTE is a rich [Twitter Bootstrap](http://getbootstrap.com/) admin template.

## Installation

Add this line to your application's Gemfile (you'll need (adminlte)[https://github.com/chukcha-wtf/adminlte] gem installed):

```ruby
gem 'adminlte'
gem 'adminlte-generators'
```

Run bundle install:

    bundle install

## Generators

Get started:

    $ rails generate adminlte:install

From now on, any time you generate a controller or scaffold, you'll get AdminLTE template.
Sidebar and Header are also generated just for you.


## Usage

To print the options and usage run the command `rails generate adminlte:install --help`

## Options

#### Template engines

Currently only **erb** is supported.

#### Stylesheet engines

Currently only **scss** is supported.

#### Named layout

You could provide a name for generated layout (usefull if you've got few layouts in your app).

Simply run:

    rails generate bootstrap:install --layout_name=admin

#### Default skin

AdminLTE comes with **blue** skin by default. If you wish to change it to **black** just run:

    rails generate bootstrap:install --skin=black

#### Skip turbolinks

Run the generator with option `--skip-turbolinks` to remove turbolinks references from the generated layout.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/adminlte-generators/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## TODO:
Write tests for generators