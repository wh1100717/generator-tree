// Generated by CoffeeScript 1.8.0
var <%= Appname %>;

<%= Appname %> = {};

<%= Appname %>.version = Grass.getVersion("forest", "<%= appname %>");

<%= Appname %>.debug = Grass.getParam("debug") === "true" || (<%= Appname %>.version == null) ? true : false;

require.config({
  urlArgs: <%= Appname %>.debug || Grass.getParam("cache") === "true" ? "bust=" + ((new Date()).getTime()) : "",
  baseUrl: <%= Appname %>.debug ? "http://localhost:9008" : "http://g.tbcdn.cn/forest/<%= appname %>/" + <%= Appname %>.version
});
