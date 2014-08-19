function wlCommonInit(){

}

function openExternalApp() {
	var parameter = null;
	
	if (WL.Client.getEnvironment() == WL.Environment.ANDROID) {
		parameter = $('#packageName').val();
	}
	
	cordova.exec(onSuccess, onFailure, "OpenExternalAppPlugin", "openApp", [parameter]);
}

function onSuccess() {
	WL.Logger.info("App successfully opened");
}

function onFailure() {
	WL.Logger.info("App failed opening");
}