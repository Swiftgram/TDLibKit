# tl2swift

This project designated for parsing Telegram Type Language (.tl) specification for [TDLib](https://github.com/tdlib/td) and generating Swift code. <br>
`tl2swift` generates swift structures, enums and methods for working with TDLib json interface. See example in project [tdlib-swift](https://github.com/modestman/tdlib-swift)


### Usage 
Download TL-scheme

```shell
$ curl https://raw.githubusercontent.com/tdlib/td/master/td/generate/scheme/td_api.tl -o td_api.tl
```

Generate sources
```shell
$ swift run tl2swift td_api.tl ./output/
```

[Optional] Generate sourcea and Set TDLib version & commit in header comment
```shell
$ swift run tl2swift td_api.tl ./output/ 1.7.5 73d8fb4
```
