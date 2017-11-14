## Usage

### Create endpoint configuration file

Create endpoint config yml file ([Example](scripts/example.yml)) in your project stub folder eg: `myProjectStubDir/data.yml`

Reference: https://github.com/mrak/stubby4node

### Create stub response files
Create stub response json files in your project stub folder ([Example](scripts/users.json))

### Start container

#### docker-compose.yml
```
version: '2'
services:
  stub:
    image: unlockd/stub-server
    volumes:
      - "myProjectStubDir:/stub"
    ports:
      - 8882:8882
      - 8889:8889
    environment:
      - STUB_DATA=/stub/data.yml
      - ADMIN_PORT=1234 #optional, default 8889
      - STUB_PORT=5678 #optional, default 8882
```

#### Run command
```
docker-compose up -d stub

# access http://localhost:1234/status to view the stub configurations
# access http://localhost:5678/users to get the stub response
```

### Change stubs

When changing stub response json files, the stub response is updated automatically 

When changing endpoint config yml file, run ```docker-compose restart stub```

When changing docker composer file, run 
```
docker-compose stop stub \
&& docker-compose rm -f stub \
&& docker-compose up -d stub
```

 






