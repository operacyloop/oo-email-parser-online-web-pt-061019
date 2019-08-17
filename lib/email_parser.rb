class EmailAddressParser
	attr_accessor :emails
	
	def initialize(emails)
		@emails= emails
	end
	
	def parse
		@emails = @emails.gsub(/[\s,]/ ," ").split
		# @email is an array now
		@emails.uniq
	end
	
end


emails1 = "asd@qw.com, per@er.org, Zaza@sugar.net"
parser1 = EmailParser.new(emails1)
parser1.parse 

emails2 = "asd@qw.com per@er.org per@er.org Zaza@sugar.net"
parser2 = EmailParser.new(emails2)
parser2.parse

end
