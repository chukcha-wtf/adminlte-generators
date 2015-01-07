# Adminlte Generators

AdminLTE generators provides easy [AdminLTE](http://almsaeedstudio.com/AdminLTE) integration with Rails 4. 
AdminLTE is a rich [Twitter Bootstrap](http://getbootstrap.com/) admin template.

## Installation

Add this line to your application's Gemfile, you'll need (adminlte)[https://github.com/chukcha-wtf/adminlte] gem installed:

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

    rails generate adminlte:install --layout_name=admin

#### Default skin

AdminLTE comes with **blue** skin by default. If you wish to change it to **black** just run:

    rails generate adminlte:install --skin=black

#### Skip turbolinks

Run the generator with option `--skip-turbolinks` to remove turbolinks references from the generated layout.

## Helpers
Oh, btw you'll get 2 navigation helpers for free.

For sidebar links you could use `nav_link` helper:

```ruby
  <%= nav_link root_path do %>
    <i class="fa fa-dashboard"></i> <span>Dashboard</span>
  <% end %>
```

And if you want to create a treeview, just use `treeview_link` helper:

```ruby
  <% treeview_link 'Lots of links here' do %>
    <%= nav_link you_shall_not_path do %>
      <i class="fa fa-angle-double-right"></i>
      One Way
    <% end %>
    <%= nav_link you_shall__path do %>
      <i class="fa fa-angle-double-right"></i>
      Another
    <% end %>
  <% end %>
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/adminlte-generators/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Credits

* [AdminLTE](http://almsaeedstudio.com/AdminLTE)
* [bootstrap-generators](https://github.com/decioferreira/bootstrap-generators)


## TODO:
Write tests for generators