require "feature_flagger/version"

module FeatureFlagger
  class Error < StandardError; end

  # Your code goes here...

  # USAGE
  #
  # FeatureFlagger.feature active_if: true do
  #   puts :hoge
  # end

  def self.feature(active_if:)
    yield if active_if
  end
end
