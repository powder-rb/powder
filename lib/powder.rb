module Powder
  # Get the origin of the application link, whether it's a link to a
  # rack app or proxy to a port.
  def get_app_origin(app_link)
    if File.symlink? app_link
      File.readlink(app_link)
    else
      port = File.readlines(app_link)[0]
      "proxy port: #{port}"
    end
  end
end
