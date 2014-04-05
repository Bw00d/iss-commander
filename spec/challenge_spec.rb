require 'spec_helper'

describe Challenge do
  it { should belong_to :mission }
  it { should have_many :astronauts }
end
