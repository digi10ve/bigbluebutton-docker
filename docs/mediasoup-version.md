# Note you have to change mediasoup version

To prevent docker build error, you should change mediasoup version to 3.10.3 or above.

## File location
#### Open following file to change mediasoup version.

```
$ sudo vim ~/bbb-docker/mod/webrtc-sfu/bbb-webrtc-sfu/package.json
```

#### Delete package-lock.json

```
$ sudo rm ~/bbb-docker/mod/webrtc-sfu/bbb-webrtc-sfu/package-lock.json
```

## Reference
the modification is based on https://github.com/bigbluebutton/docker/issues/226#issuecomment-1209047268