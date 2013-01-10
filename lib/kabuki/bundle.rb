module Kabuki
  class Bundle
  end
end

class Object
  def kabuki
    self.kabuki_dump.kabuki_zip.kabuki_encrypt
  end
end

class String
  def kabuki
    self.kabuki_decrypt.kabuki_unzip.kabuki_load
  end
end