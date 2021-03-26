require "spec_helper"
require "greeting"

RSpec.describe Greeting do
    it "return 'Hello world'" do
        greeting = Greeting.new

        expect(greeting.hello).to  eql("Hello world")
    end
end