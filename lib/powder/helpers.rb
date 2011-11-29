module Powder
  module Helpers
    POWDER_CONFIG = ".powder"
    POW_PATH = "#{ENV['HOME']}/.pow"
    POW_DAEMON_PLIST_PATH="#{ENV['HOME']}/Library/LaunchAgents/cx.pow.powd.plist"
    POW_FIREWALL_PLIST_PATH = "/Library/LaunchDaemons/cx.pow.firewall.plist"
    
    def current_dir_name
      File.basename(%x{pwd}.chomp)
    end

    def configured_pow_name
      return nil unless File.exists?(POWDER_CONFIG)

      File.foreach(POWDER_CONFIG) do |line|
        next if line =~ /^($|#)/
        return line.chomp
      end

      return nil
    end

    def current_dir_pow_name
      current_dir_name.tr('_', '-')
    end

    def get_pow_name
      configured_pow_name || current_dir_pow_name
    end

    def write_pow_config(name=nil)
      return if ! name || options[:"no-config"]
      powder_exists = File.exists?(POWDER_CONFIG)
      configured_name = get_pow_name

      unlink if powder_exists && configured_name != name

      if options[:force] || ! powder_exists
        File.open(POWDER_CONFIG, "w") do |f|
          f.puts(name)
        end
        say "Created powder config #{POWDER_CONFIG}"
      elsif !options[:force] && powder_exists && configured_name != name
        say "Cowardly refusing to overwrite #{POWDER_CONFIG}"
        exit 1
      end
    end

    def is_powable?
      if File.exists?('config.ru') || File.exists?('public/index.html')
        true
      elsif legacy = (is_rails2_app? || is_radiant_app?)
        say "This appears to be a #{legacy} application. You need a config.ru file."
        if yes? "Do you want to autogenerate a basic config.ru for #{legacy}?"
          uri = URI.parse("https://raw.github.com/gist/909308")
          http = Net::HTTP.new(uri.host, uri.port)
          http.use_ssl = true
          http.verify_mode = OpenSSL::SSL::VERIFY_NONE
          request = Net::HTTP::Get.new(uri.request_uri)
          create_file "config.ru",  http.request(request).body
          return true
        else
          say "Did not create config.ru"
          return false
        end
      else
        say "This does not appear to be a rack app as there is no config.ru."
        say "Pow can also host static apps if there is an index.html in public/"
        return false
      end
    end

    def is_rails2_app?
      File.exists?('config/environment.rb') &&
        !`grep RAILS_GEM_VERSION config/environment.rb`.empty? ? 'Rails 2' : nil
    end

    def is_radiant_app?
      File.exists?('config/environment.rb') &&
        !`grep Radiant::Initializer config/environment.rb`.empty? ? 'Radiant' : nil
    end

    def domain
      if File.exists? File.expand_path('~/.powconfig')
        returned_domain = %x{source ~/.powconfig; echo $POW_DOMAINS}.gsub("\n", "").split(",").first
        returned_domain = %x{source ~/.powconfig; echo $POW_DOMAIN}.gsub("\n", "") if returned_domain.nil? || returned_domain.empty?
        returned_domain = 'dev' if returned_domain.nil? || returned_domain.empty?
        returned_domain
      else
        'dev'
      end
    end
  end
end