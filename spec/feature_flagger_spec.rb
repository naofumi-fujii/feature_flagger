RSpec.describe FeatureFlagger do
  it "has a version number" do
    expect(FeatureFlagger::VERSION).not_to be nil
  end

  it "does something useful" do
    res = FeatureFlagger.feature active_if: true do
      :hoge
    end

    expect(res).to eq(:hoge)

    res = FeatureFlagger.feature active_if: false do
      :hoge
    end

    expect(res).to eq(nil)
  end
end
