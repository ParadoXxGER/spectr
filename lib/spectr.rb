class Spectr
  def test(description)
    @description = description
    puts "INFO: #{description}"
    yield self
    self
  end

  def assume(assumption, expected_result)
    @assumption = assumption
    @expected_result = expected_result
    begin
      @result = yield
    rescue => e
      @result = e
    end
    compare
    exit 255 if @abort
  end

  private

  def compare
    if @result.eql? @expected_result
      puts "     GREEN: #{@assumption}"
    else
      puts "     RED: #{@assumption}"
      puts "          Expected #{@expected_result.inspect} but got #{@result.inspect}"
      @abort = true
    end
  end
end
