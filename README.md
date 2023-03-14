# Local Echarts Website

> echarts-website @ ea106eb06f19fef134ad16d1b84cee58895882ac

## Build

`cd` to each `echarts-*` module and build.

Replace apache site:
```
find . -type f -exec sed -i 's/https:\/\/echarts.apache.org//g' {} \;
```

## Start server

```
sudo docker-compose -f docker-compose.yaml up -d
```

