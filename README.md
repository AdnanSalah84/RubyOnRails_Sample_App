# Ruby on Rails Tutorial sample application

## Getting started

Generated static pages

```
$ rails generate controller StaticPages home help

$ rails generate controller Users new

$ rails generate model User name:string email:string

$ rails db:migrate

$ rails console --sandbox

>> User.new
>> user = User.new(name: "Bob Smith", email: "bsmith@example.com")
>> user.valid?
>> user.save
>> user
>> user.name
>> user.email
>> user.updated_at
>> User.find(1)
>> User.find_by(email: "bsmith@example.com")
>> User.first
>> User.all
>> user.valid?
>> user.errors.full_messages
>> user.save
>> ("a" * 244 + "@example.com").length

>> %w[foo bar baz]
=> ["foo", "bar", "baz"]
>> addresses = %w[USER@foo.COM THE_US-ER@foo.bar.org first.last@foo.jp]
=> ["USER@foo.COM", "THE_US-ER@foo.bar.org", "first.last@foo.jp"]
>> addresses.each do |address|
?>   puts address
>> end
```

https://rubular.com/

Expression	                            Meaning
/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i	full regex
/	                                    start of regex
\A	                                    match start of a string
[\w+\-.]+	                            at least one word character, plus, hyphen, or dot
@	                                    literal “at sign”
[a-z\d\-.]+	                            at least one letter, digit, hyphen, or dot
\.	                                    literal dot
[a-z]+	                                at least one letter
\z	                                    match end of a string
/	                                    end of regex
i	                                    case-insensitive

(convenient to end the name with to_users, since in this case Rails automatically constructs a migration to add columns to the users table)

$ rails generate migration add_password_digest_to_users password_digest:string

$ User.create(name: "bob smith", email: "bsmith@example.com", password: "test123", password_confirmation: "test123")

>> user = User.find_by(email: "bsmith@example.com")
>> user.password_digest
>> user.authenticate("not_the_right_password")
