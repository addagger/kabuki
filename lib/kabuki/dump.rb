require 'kabuki/dump/object'
require 'kabuki/dump/string'
require 'kabuki/dump/symbol'
require 'kabuki/dump/hash'
require 'kabuki/dump/array'
require 'kabuki/dump/set'
require 'kabuki/dump/class'

module Kabuki
  class Dump
    def self.encode(object)
      Marshal.dump(object)
    end
    
    def self.decode(string)
      Marshal.load(string)
    end
  end
end

class Object
  def kabuki_dump
    Kabuki::Dump.encode(self)
  end
end

class String
  def kabuki_load
    Kabuki::Dump.decode(self)
  end
end