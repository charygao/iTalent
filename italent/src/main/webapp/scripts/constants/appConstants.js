(function(){
	'use strict';
	
	// Constanten in deze app
	angular.module('iTalentApp')
		.constant('GLOBALS', {
			appName: '2016 - iTalent App',
			appVersion: '1.0.0',
			//baseURL: location.origin.includes("rhcloud") ? location.origin + "/ws/" : location.origin + "/italent/ws/"
			baseURL: location.origin  + "/"
		})
		.constant('LOCALES', {
			'locales': {
				'nl_NL': 'Nederlands',
				'en_US': 'English'
			},
			'preferredLocale': 'nl_NL'
		});
})();