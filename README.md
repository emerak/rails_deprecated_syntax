# rails_deprecated_syntax
Basic syntax deprecation checker for applications wanting to update to Rails 5.0

## Disclaimer: This gem does not change any syntax for you, it only tells you what _should_ be changed

### How to use it

Install it in your project

```
  gem install rails_deprecated_syntax
```

Create a Rake task
```
  require 'rails_deprecated_syntax'
  task :show_deprecations do
    RailsDeprecatedSyntax.show_deprecations
  end
```

Call the rake task in a terminal
```
  rake show_deprecations
```
