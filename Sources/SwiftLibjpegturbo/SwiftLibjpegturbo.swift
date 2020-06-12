import libjpegturbo

struct SwiftLibjpegturbo {
    var text = "Hello, World!"
}

func tryHello(){
  let tjhandle = tjInitCompress()
  if(tjhandle != nil) {
    print("Hello")
  }
}
