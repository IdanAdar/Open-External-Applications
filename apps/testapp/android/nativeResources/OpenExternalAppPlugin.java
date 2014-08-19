package com.testapp;

import android.content.Intent;
import android.widget.Toast;
import org.apache.cordova.CallbackContext;
import org.apache.cordova.CordovaPlugin;
import org.json.JSONArray;
import org.json.JSONException;

public class OpenExternalAppPlugin extends CordovaPlugin {

	@Override 
	public boolean execute (String action, JSONArray args, CallbackContext callbackContext)
	throws JSONException {
		if (action.equals("openApp")) {
			Intent intent = webView.getContext().getPackageManager().getLaunchIntentForPackage(args.getString(0));
			
			if (intent != null) {
			    // Activity was found, launch it.
			    intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
			    webView.getContext().startActivity(intent);
			    return true;
			} else { 			
				// Activity not found
				Toast.makeText(webView.getContext().getApplicationContext(), "The package " + args.getString(0) + " was not found.", Toast.LENGTH_LONG).show();
				return false;
			}
		} else {
			return false;
		}
	}
}
