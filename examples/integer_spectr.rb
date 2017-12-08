require_relative '../lib/spectr'

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
