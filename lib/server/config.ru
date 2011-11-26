Dir["./*.rb"].each {|file| require file }

run Powder::Server