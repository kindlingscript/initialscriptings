require 'test_helper'

class QuoteTest < ActiveSupport::TestCase
  test "unique_tag" do
  	quote = Quote.create(:author => 'Rebecca Taylor', :saying => 'Testing testing, yo.')
  	expected = 'RT#' + quote.id.to_s
  	actual = quote.unique_tag
  	assert_equal expected, actual
  end
end
