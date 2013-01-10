module Kabuki
  class Worker
  end
end

class Object
  def kabuki_load
    self.kabuki_dump.kabuki_zip.kabuki_encrypt
  end
end

class String
  def kabuki_load
    self.kabuki_decrypt.kabuki_unzip.kabuki_load
  end
end