module Kabuki
  class Zip
    def initialize(string)
      @string = string
    end
    
    def compress(level=3)
      z = Zlib::Deflate.new(level)
      dst = z.deflate(@string, Zlib::FINISH)
      z.close
      dst
    end

    def decompress
      zstream = Zlib::Inflate.new
      buf = zstream.inflate(@string)
      zstream.finish
      zstream.close
      buf
    end
  end
end

class String
  def kabuki_zip
    Kabuki::Zip.new(self).compress
  end
  
  def kabuki_unzip
    Kabuki::Zip.new(self).decompress
  end
end