<%= Appname %> = {}

<%= Appname %>.version = Grass.getVersion("forest", "<%= appname %>")

<%= Appname %>.debug = if Grass.getParam("debug") is "true" or not <%= Appname %>.version? then true else false

require.config {
    urlArgs: if <%= Appname %>.debug or Grass.getParam("cache") is "true" then "bust=#{(new Date()).getTime()}" else ""
    baseUrl: if <%= Appname %>.debug then "http://localhost:9008" else "http://g.tbcdn.cn/forest/<%= appname %>/#{<%= Appname %>.version}"
}