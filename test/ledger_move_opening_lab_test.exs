defmodule LedgerMoveOpeningLabTest do
  use ExUnit.Case

  test "fixture decisions" do
    signal_case_1 = %{demand: 85, capacity: 83, latency: 19, risk: 22, weight: 13}
    assert LedgerMoveOpeningLab.score(signal_case_1) == 148
    assert LedgerMoveOpeningLab.classify(signal_case_1) == "review"
    signal_case_2 = %{demand: 78, capacity: 98, latency: 23, risk: 9, weight: 6}
    assert LedgerMoveOpeningLab.score(signal_case_2) == 184
    assert LedgerMoveOpeningLab.classify(signal_case_2) == "accept"
    signal_case_3 = %{demand: 84, capacity: 87, latency: 12, risk: 16, weight: 4}
    assert LedgerMoveOpeningLab.score(signal_case_3) == 155
    assert LedgerMoveOpeningLab.classify(signal_case_3) == "review"
  end
end
