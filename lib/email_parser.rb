# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    def initialize(emails)
        @email_addresses = emails
    end

    attr_accessor :email_addresses

    def parse
        email_addresses.split(/[\s,]+/).uniq
    end
end

# email = EmailAddressParser.new
# email.email_addresses = ("email@site.com, anotherEmail@site.com")
# print email.parse