Email Statistics  
================

**Author:** Namitha Hanumantharaya

Task
----

Implement a web application in Ruby that:
* can receive web hooks from Mandrill
* processes the web hook data and stores it into a suitable data store
* displays the following statistics
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
$ cd llirdnam/listener/
$ go run listener.go
```
in third tab send email data to rail server

```sh
$ cd llirdnam/llirdnam/
$ go run llirdnam.go http://localhost:3000/emails
```


Then, you can open your browser and visit `localhost:9292`.
