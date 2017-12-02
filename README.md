# What is ZenD?

ZenD is the console full node provided by [ZencashOfficial](https://github.com/ZencashOfficial/zen).

ZenD supports ZenCash (ZEN).

# How to use this image [X86_64 version]

Create shared volume:

```console
$ docker volume create --name zend
```

Run in background:

```console
$ docker run -v zend:/zend -d --name YOUR_CONTAINER_NAME -p YOUR_PORT:YOUR_PORT calvintam236/zend:x86_64 -datadir=/zend -server -rest -rpcport=YOUR_PORT
```

Get `zend` options with:

```console
$ docker run --rm calvintam236/zend:x86_64
```

Fetch logs of a container:

```console
$ docker logs YOUR_CONTAINER_NAME
```
