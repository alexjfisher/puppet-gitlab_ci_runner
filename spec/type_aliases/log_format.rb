require 'spec_helper'

describe 'Gitlab_ci_runner::Log_format' do
  %w[runner text json].each do |value|
    it { is_expected.to allow_value(value) }
  end

  [:undef, 1, '', 'WARN', 'DEBUG1', true, false, 42]. each do |value|
    it { is_expected.not_to allow_value(value) }
  end
end
