# Globalize Test

This is a simple Rails app demonstrating an issue with the [Globalize](https://github.com/globalize/globalize) gem.
There seems to be an issue adding records to a `has_many :through` association
when using a default scope and locale fallbacks.

## Steps to reproduce

This application already contains the necessary setup for the models, and sets
the locale fallbacks in `application.rb`

- run `bundle install`
- create the database: `bin/rails db:setup`
- open up a console: `bin/rails c`
- create the necessary records and try to add one to the association:

```
Loading development environment (Rails 5.0.2)
[1] pry(main)> foo = Foo.create(name: "Test Foo")
[2] pry(main)> bar = Bar.create(name: "Test Bar")
[3] pry(main)> foo.bars << bar

   (0.1ms)  BEGIN
   (0.1ms)  ROLLBACK
ActiveModel::UnknownAttributeError: unknown attribute 'locale' for FoosBar.
from /home/luuk/src/work/projects/globalize_test/vendor/bundle/gems/activemodel-5.0.2/lib/active_model/attribute_assignment.rb:48:in `_assign_attribute'
```
