require "kabuki/version"

module Kabuki
  def self.load!
    require 'kabuki/engine'
    require 'kabuki/railtie'
  end
end

Kabuki.load!
