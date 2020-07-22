require "logical_friday/version"
require 'logical_friday/included'

module LogicalFriday
  class Error < StandardError; end
  # Your code goes here...

  include ::LogicalFriday::Included
end
