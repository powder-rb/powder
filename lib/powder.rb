module Powder
  # Get the origin of the application link, whether it's a link to a
  # rack app, proxy to a port, or proxy to a URL.
  #
  # Mostly follows logic of pow configuration class last changed 2011-08-05,
  # which remains current as of pow v0.4.1 (and master on 2014-01-08)
  # http://github.com/37signals/pow/blob/36b91fe/lib/configuration.js#L161-L188
  def get_app_origin(app_link)
    case (File.stat(app_link).ftype)
    when "file"
      data = File.read(app_link)
      if data.length < 10 && data.to_i != 0
        "proxy port: #{data}"
      elsif url_match = (data.match %r{https?://\S+})
        "proxy URL: #{url_match.to_s}"
      else
        nil
      end
    when "directory"
      canonicalize_path(app_link)
    else
      nil
    end
  end

  # Prepare path to the level of accuracy we prefer for list display
  def canonicalize_path(path)
      path = File.readlink path if File.symlink? path
      path.sub(ENV['HOME'], '~')
  end
end
