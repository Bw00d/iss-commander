require 'spec_helper'

describe Mission do
  it { should have_many :challenges }
  it { should have_many :astronauts }
end
