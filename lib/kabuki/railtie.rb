require 'rails'

module Kabuki
  class Railtie < ::Rails::Railtie
    config.before_initialize do
      require 'kabuki/dump'
      require 'kabuki/zip'
      require 'kabuki/crypt'
      require 'kabuki/worker'
      ActiveSupport.on_load :active_record do
      end
      ActiveSupport.on_load :action_view do
      end
    end

  end
end