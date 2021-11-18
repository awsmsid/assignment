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

Signup API

```
$ POST http://localhost:3000/auth/
  
  {
		"email": "test8@email.com",
		"password": "password",
		"password_confirmation": "password"
	}

	Response:
	{
    "status": "success",
    "data": {
        "id": 8,
        "provider": "email",
        "uid": "test8@email.com",
        "allow_password_change": false,
        "name": null,
        "nickname": null,
        "image": null,
        "email": "test8@email.com",
        "created_at": "2021-11-18T06:13:50.505Z",
        "updated_at": "2021-11-18T06:13:50.583Z"
    }
  }
```

Search API

```
$ GET http://localhost:3000/users/search?query=test8

	Response:
	[
    {
        "user": {
            "id": 8,
            "email": "test8@email.com"
        }
    }
	]
```

User Follow API

```
$ POST http://localhost:3000/follows

	{
		"follows":{
		  "following_id": 7
		}
	}

	Response:
	{
    "follow": {
        "id": 6,
        "follower_id": 8,
        "following_id": 7
    }
	}
```

User Image Post API

```
$ POST http://localhost:3000/posts

	{
		"posts":{
		  "name": "test",
		  "image": <file>
		}
	}

	Response:
	{
    "post": {
        "id": 11,
        "name": "test2",
        "image": "/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBFQT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--c7b87945cce4cd102c4f36e6313ad74bc6ceaafa/Screenshot%202021-11-17%2000-17-28.png"
    }
	}
```

List of post of the following

```
$ get http://localhost:3000/posts/7

	Response:
	[
    {
        "post": {
            "id": 1,
            "name": "test",
            "image": "/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBCZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--8b7dcad825516f66d31673659fc21024478d08be/Screenshot%202021-11-18%2001-03-22.png"
        }
    },
    {
        "post": {
            "id": 2,
            "name": "test2",
            "image": "/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBCdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--51b3100c411cbc2afc46aad52f40b712b8bc9f85/Screenshot%202021-11-18%2001-03-22.png"
        }
    },
    {
        "post": {
            "id": 3,
            "name": "test2",
            "image": "/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBDQT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--6e3a3c5dd90aae3f1cd8f4c52cab638e5ff32ff7/Screenshot%202021-11-18%2001-03-22.png"
        }
    }
	]
```
