require 'rails'

module Kabuki
  class Railtie < ::Rails::Railtie
    config.before_initialize do
      require 'kabuki/dump'
      require 'kabuki/zip'
      require 'kabuki/crypt'
      require 'kabuki/bundle'
      ActiveSupport.on_load :active_record do
        require 'kabuki/models/active_record_extension'
        include Wakari::ActiveRecordExtension
      end
      ActiveSupport.on_load :action_view do
      end
    end

  end
end