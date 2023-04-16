# zfletch-style

Shared style configurations.
Forked from the (now deprecated) [gnar-style](https://github.com/TheGnarCo/gnar-style).

## Installation

Add this line to your application's Gemfile:

```ruby
group :development, :test do
  gem 'zfletch-style'
end
```

And then execute:

`bundle`

Or install it yourself as:

`gem install zfletch-style`

(See project at [rubygems.org](https://rubygems.org/gems/zfletch-style))

## Usage

This Gem includes rubocop, and it's not necessary to separately include rubocop directly in your
application's dependencies.

### Inheriting from the Gem

Create a `.rubocop.yml` with the following configuration:

```yaml
inherit_gem:
  zfletch-style:
    # Choose from one of these three
    - rubocop/rubocop.yml # if the pure Ruby style is all that's needed
    - rubocop/rubocop_gem.yml # if the application is a Gem
    - rubocop/rubocop_rails.yml # if the application is a Rails project
```

To check your application against these style configurations:

```bash
$ bundle exec rubocop
```

## Overriding Styles

Example:

```yaml
# In your app's .rubocop.yml
inherit_gem:
  zfletch-style:
    - "rubocop/rubocop.yml"

Metrics/BlockLength:
  Exclude:
    - specific_file.rb
```

Note that if you add in a local style exception in your own application after inheriting from
zfletch-style, that will completely override zfletch-style's defaults.
