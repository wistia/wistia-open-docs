mixpanel.init('4e7e88b81388d28277d7834a7e930a94'); // this is the dev api key

var MixPanelTracker = {};

// list of pages you want to track page view events for:
MixPanelTracker.PAGE_VIEWS_TO_TRACK = ['doc'];

MixPanelTracker.registerPageViewEvent = function() {
  var pageLocation = window.location.pathname.substring(1);// strip off initial slash and then use the url path, or replace '/' with 'doc' when on localhost, 
  if (MixPanelTracker.PAGE_VIEWS_TO_TRACK.indexOf(pageLocation) > -1) {
    mixpanel.track('Page Viewed', { 'page': pageLocation } );
  }
};

MixPanelTracker.registerPageViewEvent(); 