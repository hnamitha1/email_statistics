Email Statistics  
================
Email Statistics allows you to quickly displays the statistics of email webhooks.

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

* I was asked to use any Ruby frameworks/libraries/gems of your choice, and data store of your choice.

Instructions
------------
These are the instructions for how to download and run the application using a local server:

```sh
$ git clone https://github.com/hnamitha1/email_statistics.git
$ cd email_statistics/
$ bundle
$ rails db:setup
$ rails s
```
in the second tab

```sh
$ cd email_statistics/llirdnam/listener/
$ go run listener.go
```
in the third tab send email data to rail server

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

## Approach 

Initial set up was tricky because of Go code. After getting some idea I was able to process the Go Code data and posted to `/emails` route inside emails_controller. I used Active Record and PostgreSQL for my database. I then started writing class methods in the `Email` model to count the number of emails under each event and the open/click rate per email type. I did some styling using Bootstrap. 

now anyone can post the data to `Email`. We can avoid that by adding some security. 








