mixpanel.init('8e806db62ec25dd1e81478b8bb80e1bf'); // this is the prod api key

var MixPanelTracker = {};

// list of pages you want to track page view events for:
MixPanelTracker.PAGE_VIEWS_TO_TRACK = ['doc'];

MixPanelTracker.registerPageViewEvent = function() {
  var pageLocation = window.location.pathname.substring(1);// strip off initial slash and then use the url path, or replace '/' with 'doc' when on localhost,
  if (MixPanelTracker.PAGE_VIEWS_TO_TRACK.indexOf(pageLocation) > -1) {
    var eventData = {};
    var eventName = 'viewed ' + pageLocation;
    eventData[eventName] = new Date().toJSON();
    mixpanel.people.set(eventData);
    mixpanel.track('page viewed', {page: pageLocation});
  }
};

MixPanelTracker.registerPageViewEvent();