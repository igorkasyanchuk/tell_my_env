module TellMyEnv
  module X
    def prompt(*args, &block)
      color = case Rails.env.to_s
      when 'staging'
        TellMyEnv::Starter::YELLOW
      when 'production'
        TellMyEnv::Starter::RED
      else
        TellMyEnv::Starter::GREEN
      end
      args[0] = TellMyEnv::Starter.color_text("#{Rails.env}>", color)
      super(*args, &block)
    end
  end

  class Railtie < ::Rails::Railtie
    console do
      IRB::Irb.send(:prepend, X) if defined?(IRB)
    end
  end
end
