module Config
  class Application < Rails::Application
    config.layout = :default
    config.title = "YOUR SITE NAME"
    config.footer = "Copyright (C) YOUR SITE NAME. All Right Reserved."
  end
  class Whitelist
    # split space
    IP = %w(localhost 127.0.0.1 ::1)
    def self.matches?(request)
      IP.include?(request.remote_ip)
    end
  end
end
