require 'sinatra'
require 'logger'
require 'yaml'

module Powder  
  class Server < Sinatra::Base
    POW_PATH = "#{ENV['HOME']}/.pow"
    LOG = ::Logger.new('log/development.log')
    
    before do
      @apps = YAML::load_file("config.yml")[request.host]
    end
    
    # Routes ------------------------------------------------------------------
    get '/restart' do
      to_url = redirect_url(params[:redirect])
      @apps.each do |app|
        Dir.chdir(pow_dir(app)) do
          `powder restart`
          to_url ||= pow_url(app)
        end
      end
      redirect to_url
    end
    
    # Helpers -------------------------------------------------------------------
    def pow_dir(app_name)
      POW_PATH + '/' + app_name
    end

    def pow_url(app_name)
      'http://' + app_name + '.' + domain
    end
    
    def redirect_url(to)
      "http://" + to if to
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

    def log(msg)
      LOG.debug(msg)
    end
  end
end
