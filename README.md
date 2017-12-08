# Spectre

## Micro unit test framework 
Source: https://rubygems.org/gems/spectr

[![Gem Version](https://badge.fury.io/rb/spectr.svg)](https://badge.fury.io/rb/spectr)

Installation:

Plain:

```
gem install spectr
```

Gemfile:
```
gem 'spectr' ~> '0.0.0'
```


Example spec: (examples/integer_spectr.rb)
Note: Spectr files must end with `_spectr.rb`

```
Spectr.new.test 'Test the builtin Integer class' do |test|

  int = 1

  test.assume('int inherits from Integer', true) do
    int.is_a?(Integer)
  end

  test.assume('int is 1', 1) do
    int
  end

  test.assume('addition works', 2) do
    int + 1
  end

end
```

Usage `spectr PATH`:

```
spectr examples/* # Will execute all tests within examples
```