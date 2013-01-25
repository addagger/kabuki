module Kabuki
  class Bundle
  end
end

class Object
  def kabuki!
    Base64.strict_encode64(self.kabuki_dump.kabuki_zip.kabuki_encrypt)
  end
end

class String
  def kabuki
    Base64.strict_decode64(self).kabuki_decrypt.kabuki_unzip.kabuki_load
  end
end