module Dreamy::Command
	class Help < Base
		def index
			display usage
		end

		def usage
			usage = <<EOTXT

=== Commands
 help                           # show this usage

 domains:http                   # list HTTP domain details
 domains:mysql                  # list MySQL domains
 domains:status                 # check availability of all domains (pingability)
 
 dns                            # list DNS records
 dns <name>                     # list DNS records for <name>
 
 announce                       # list announce lists
 announce:list <list>           # list all subscribers to <name> list (eg - 'my_list@example.com')
 announce:add <list> <email>    # add subscriber with <email> to <list>
 announce:remove <list> <email> # remove subscriber with <email> from <list>
 
 users                          # list user accounts: details
 users:pw                       # list user accounts: usernames & passwords

EOTXT
		end
	end
end
