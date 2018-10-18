require 'karminer/version'
require 'karminer/block'
require 'karminer/transaction'

# require other files here!

module Karminer
  class Address
    def initialize
      @nonce = nil
      @balance = 1000
    end
  end
end
