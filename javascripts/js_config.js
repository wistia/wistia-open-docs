WistiaDoc = {
  url: "http://wistia.com",
  path: "/newdoc",
  port: ":4000",
  search_path: "/search",
  search_port: ":9393",
  search_app_url: function() {
    return WistiaDoc.url + WistiaDoc.search_port + WistiaDoc.path + WistiaDoc.search_path;
  },
  web_app_url: function() {
    return WistiaDoc.url + WistiaDoc.port + WistiaDoc.path;
  }
};
