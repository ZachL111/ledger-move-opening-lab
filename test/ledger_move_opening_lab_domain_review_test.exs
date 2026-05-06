defmodule LedgerMoveOpeningLab.DomainReviewTest do
  use ExUnit.Case

  test "domain review lane" do
    item = %{signal: 54, slack: 24, drag: 26, confidence: 51}
    assert LedgerMoveOpeningLab.DomainReview.score(item) == 105
    assert LedgerMoveOpeningLab.DomainReview.lane(item) == "watch"
  end
end
