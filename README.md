#### Build is a full-stack Twitter clone called "Chitter", attempting to build a web interface driving some database stuff behind the scenes.

#### Build uses HTML/CSS on front end (I think), Ruby on Sinatra back end (if I've understood this correctly), with PostgresQL.

## To run this project:

#### 1.) Clone from this repository.
#### 2.) Run 'bundle' on the command line to install dependencies.
#### 3.) If you don't already have it, run 'brew install postgresql' on the command line.
#### 4.) After the brew install, c+p the following two lines one after the other into the command line:

```
ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents
```
```
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
```
#### 5.) Set up a database called "Chitter", with a table called "peeps" with the psql shell.

## Known issues:

- Partial solution, does not feature registration/sign up.
- You cannot use an apostrophe in the peep post box. No contractions, plz, or you'll see a Sinatra error.
- Timeline doesn't properly organise peeps chronologically. It only extracts the order of the peeps from the database with their automatically-generated timestamp and reverses the array they're mapped to.
- This readme is incomplete.

User stories:
=============

STRAIGHT UP
```
As a Maker
So that I can let people know what I am doing  
I want to post a message (peep) to chitter
```
*Action required:*

- Needs a box with a submit button, just like Twitter. Peep should then appear on the screen. Database will need a set up so the landing page isn't blank initially for form's sake.

```
As a maker
So that I can see what others are saying  
I want to see all peeps in reverse chronological order
```
*Action required:*

- All peeps will need a time stamp, and the arrangement of peeps on the screen in list format will
be ordered by time.

```
As a Maker
So that I can better appreciate the context of a peep
I want to see the time at which it was made
```
*Action required:*

- Hand in hand with the story above, time stamps will need to be featured on the page.
```
As a Maker
So that I can post messages on Chitter as me
I want to sign up for Chitter
```
*Action required:*

- Needs a sign up screen that can take an email, password and user name.


HARDER

As a Maker
So that only I can post messages on Chitter as me
I want to log in to Chitter

As a Maker
So that I can avoid others posting messages on Chitter as me
I want to log out of Chitter

ADVANCED

As a Maker
So that I can stay constantly tapped in to the shouty box of Chitter
I want to receive an email if I am tagged in a Peep

Original brief is below:

****************************************************************************************************

Chitter Challenge
=================

* Challenge time: rest of the day and weekend, until Monday 9am
* Feel free to use Google, your notes, books, etc. but work on your own
* If you refer to the solution of another coach or student, please put a link to that in your README
* If you have a partial solution, **still check in a partial solution**
* You must submit a pull request to this repo with your code by 9am Monday morning

Challenge:
-------

As usual please start by forking this repo.

We are going to write a small Twitter clone that will allow the users to post messages to a public stream.

Features:
-------

```
STRAIGHT UP

As a Maker
So that I can let people know what I am doing  
I want to post a message (peep) to chitter

As a maker
So that I can see what others are saying  
I want to see all peeps in reverse chronological order

As a Maker
So that I can better appreciate the context of a peep
I want to see the time at which it was made

As a Maker
So that I can post messages on Chitter as me
I want to sign up for Chitter

HARDER

As a Maker
So that only I can post messages on Chitter as me
I want to log in to Chitter

As a Maker
So that I can avoid others posting messages on Chitter as me
I want to log out of Chitter

ADVANCED

As a Maker
So that I can stay constantly tapped in to the shouty box of Chitter
I want to receive an email if I am tagged in a Peep
```

Technical Approach:
-----

This week you integrated a database into Bookmark Manager using the `PG` gem and `SQL` queries. You can continue to use this approach when building Chitter Challenge.

If you'd like more technical challenge this weekend, try using an [Object Relational Mapper](https://en.wikipedia.org/wiki/Object-relational_mapping) as the database interface.

Some useful resources:
**DataMapper**
- [DataMapper ORM](https://datamapper.org/)
- [Sinatra, PostgreSQL & DataMapper recipe](http://recipes.sinatrarb.com/p/databases/postgresql-datamapper)

**ActiveRecord**
- [ActiveRecord ORM](https://guides.rubyonrails.org/active_record_basics.html)
- [Sinatra, PostgreSQL & ActiveRecord recipe](http://recipes.sinatrarb.com/p/databases/postgresql-activerecord?#article)

Notes on functionality:
------

* You don't have to be logged in to see the peeps.
* Makers sign up to chitter with their email, password, name and a username (e.g. samm@makersacademy.com, password123, Sam Morgan, sjmog).
* The username and email are unique.
* Peeps (posts to chitter) have the name of the maker and their user handle.
* Your README should indicate the technologies used, and give instructions on how to install and run the tests.

Bonus:
-----

If you have time you can implement the following:

* In order to start a conversation as a maker I want to reply to a peep from another maker.

And/Or:

* Work on the CSS to make it look good.

Good luck and let the chitter begin!

Code Review
-----------

In code review we'll be hoping to see:

* All tests passing
* High [Test coverage](https://github.com/makersacademy/course/blob/master/pills/test_coverage.md) (>95% is good)
* The code is elegant: every class has a clear responsibility, methods are short etc.

Reviewers will potentially be using this [code review rubric](docs/review.md).  Referring to this rubric in advance may make the challenge somewhat easier.  You should be the judge of how much challenge you want this weekend.

Automated Tests:
-----

Opening a pull request against this repository will will trigger Travis CI to perform a build of your application and run your full suite of RSpec tests. If any of your tests rely on a connection with your database - and they should - this is likely to cause a problem. The build of your application created by has no connection to the local database you will have created on your machine, so when your tests try to interact with it they'll be unable to do so and will fail.

If you want a green tick against your pull request you'll need to configure Travis' build process by adding the necessary steps for creating your database to the `.travis.yml` file.

- [Travis Basics](https://docs.travis-ci.com/user/tutorial/)
- [Travis - Setting up Databases](https://docs.travis-ci.com/user/database-setup/)

Notes on test coverage
----------------------

Please ensure you have the following **AT THE TOP** of your spec_helper.rb in order to have test coverage stats generated
on your pull request:

```ruby
require 'simplecov'
require 'simplecov-console'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
  # Want a nice code coverage website? Uncomment this next line!
  # SimpleCov::Formatter::HTMLFormatter
])
SimpleCov.start
```

You can see your test coverage when you run your tests. If you want this in a graphical form, uncomment the `HTMLFormatter` line and see what happens!
