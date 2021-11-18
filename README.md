# Assignment

This is an assignent.

## Getting started

To get started with the app, first clone the repo and `cd` into the directory:

```
$ git clone https://github.com/awsmsid/assignment.git
$ cd assignment
```

Then use the ruby-3.0.0:

```
$ rvm use 3.0.0
```

Install the needed gems:

```
$ bundle install
```

Next, create db and migrate the database:

```
$ rails db:create db:migrate
```

run the app in a local server:

```
$ rails server
```

Authorization Headers

```
$ access-token: <access-token>
  client: <client-id>
  uid: <uid>
```
