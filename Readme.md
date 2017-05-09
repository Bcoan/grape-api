# Simple api

A simple api using grape

### Run

#### docker

build a docker image (on root path)

```docker build -t grape-api . ```

and run

``` docker run -p 9292:9292 grape-api ```


### Endpoints

#### Create a person

```curl -X POST http://localhost:9292/api/v1/people -H 'content-type: application/json' -d '{
	"name": "Bacon",
	"phone": "11999999999"
}' ```

#### List all people

``` curl -X GET http://localhost:9292/api/v1/people ```

#### Show person by id

``` curl -X GET http://localhost:9292/api/v1/people/1 ```

##### Delete a person

```curl -X DELETE http://localhost:9292/api/v1/people/32```


## Authors

* [**Bruno Coan**](https://github.com/bcoan)
