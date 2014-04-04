require 'spec_helper'

describe Astronaut do
  it { should validate_presence_of :name }
end
