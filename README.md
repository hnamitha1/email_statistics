Email Statistics  
================

**Author:** Namitha Hanumantharaya

Task
----

Implement a web application in Ruby that displays the following statistics:
* total number of emails sent
* total number of emails opened
* total number of clicks
* open rate per email type
* click rate per email type

## Requirements

* You can use any Ruby frameworks/libraries/gems of your choice, and data store of your choice.

Instructions
------------
These are the instructions for how to download and run the application on a local server:

```sh
$ git clone https://github.com/hnamitha1/email_statistics.git
$ cd email_statistics/
$ bundle
$ rails db:setup
$ rails s
```
in second tab

```sh
$ cd email_statistics/llirdnam/listener/
$ go run listener.go
```
in third tab send email data to rail server

```sh
$ cd email_statistics/llirdnam/llirdnam/
$ go run llirdnam.go http://localhost:3000/emails
```

Then, you can open your browser and visit `localhost:3000` to see the email statistics.

## Testing

You can run the test using the command below:

```sh
$ cd email_statistics/
$ rspec
```

Technologies used
-----------------
- Ruby on Rails
- Bootstrap
- Rspec
- Go
- PostgreSQL
