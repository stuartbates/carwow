class BaseCommand

  attr_reader :args

  def initialize(args = [])
    @args = args
  end

end
