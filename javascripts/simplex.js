Simplex = function(raw_options) {

	// takes a simplex object and sets the cookie
	var setCookie = function(obj) {
		var cookie = options['cookieName'] + '=' + encode(obj);
		
		if (options['cookieExpires'])
			cookie += '; expires=' + options['cookieExpires'].toGMTString();

		if (options['cookiePath'])
			cookie += '; path=' + options['cookiePath'];
		
		if (options['cookieDomain'])
			cookie += '; domain=' + options['cookieDomain']; 

		document.cookie = cookie;
	}
	
	// returns the simplex obj as a string
	this.getRawCookie = function() {
		var cookie_strs = document.cookie.split('; ');
		for(var i = 0; i < cookie_strs.length; i++) {
			var parts = cookie_strs[i].split('=');
			if (parts[0] == '__simplex') return parts[1];
		}
	};
	
	// return the simplex obj from the cookie, undefined if it's not set
	this.getCookie = function() {
		var raw = this.getRawCookie();
		if (raw) return decode(raw);
	};
	
	// decodes a simplex cookie string into an object
	var decode = function(str) {
		var parts = str.split('*');
		for (var i = 0; i < parts.length; i++) {
			parts[i] = unescape(parts[i]);
		}
		return { version: parts[0],
						 pages: parseInt(parts[1]), 
						 referrer: parts[2], 
						 landing: parts[3],
						 time: parts[4]};
	};
	
	// encodes a simplex object into a string
	var encode = function(obj) {
		var ary = [obj.version, obj.pages, obj.referrer, obj.landing, obj.time];
		for (var i = 0; i < ary.length; i++) {
			ary[i] = escape(ary[i]);
		}
		return ary.join('*');
	};
	
	var mergeOptionsWithDefaults = function() {
		// a year from now
		var aYearFromToday = new Date();
		aYearFromToday.setTime(aYearFromToday.getTime()+(365*24*60*60*1000));

		if (!options['cookieName']) options['cookieName'] = '__simplex';
		if (!options['cookieExpires']) options['cookieExpires'] = aYearFromToday;
		if (!options['cookiePath']) options['cookiePath'] = '/';
	}


	// setup options
	var currentVersion = 'v0';
	var options = raw_options || {};
	mergeOptionsWithDefaults();
	
	// initialize simplex!
	var simplex = this.getCookie();
	if (simplex && simplex.version == currentVersion) {
		// if the cookie is already set, update it
		simplex.pages += 1;
		setCookie(simplex);
	} else {
		// if the cookie isn't set, create it
		setCookie({
			version: currentVersion,
			pages: 1, 
			referrer: document.referrer || '', 
			landing: document.location.href || '',
			time: new Date().getTime()
		});
	}
	
}
