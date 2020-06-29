require 'rails_helper'

describe Greeting::Operation::Ping do
  it 'set result to hello world' do
    result = described_class.call()

    expect(result[:message]).to eq("Hello World!")
  end

  it 'failure to be true' do
    result = described_class.call()

    expect(result.failure?).to  be_truthy
  end

end
