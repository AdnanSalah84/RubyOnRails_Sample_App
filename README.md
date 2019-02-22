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
```
