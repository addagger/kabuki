require "kabuki/version"

module Kabuki
  def self.load!
    require 'kabuki/engine'
    require 'kabuki/railtie'
    warn <<-EOW

    DEPRECATION WARNING: Gem 'kabuki' has been moved into 'active_tools' gem.
    Further development of 'kabuki' will no longer continue.

    Thank you!

EOW
  end
end

Kabuki.load!
