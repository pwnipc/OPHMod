package com.begal.appclone.service;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.begal.appclone.classes.DefaultProvider;
import com.begal.appclone.classes.PreferenceEditor;
import com.begal.appclone.classes.Utils;
import com.begal.appclone.service.IRemoteService;
import java.util.Map;

public class RemoteService extends Service {
    private final IRemoteService.Stub mBinder = new IRemoteService.Stub() {
        private void checkCaller() {
            if (!Utils.checkCaller(RemoteService.this)) {
                throw new SecurityException();
            }
        }

        public int getInterfaceVersion() {
            checkCaller();
            return 1;
        }

        public void killAppProcesses() throws RemoteException {
            try {
                Context context = RemoteService.this.getApplicationContext();
                DefaultProvider.invokeSecondaryInstance(context, "util.Utils", "killAppProcesses", context);
            } catch (Exception e) {
                throw new RemoteException(e.toString());
            }
        }

        public String[] getPreferenceFiles() {
            checkCaller();
            return PreferenceEditor.getPreferenceFiles(RemoteService.this);
        }

        public Map getPreferences(String preferenceFile) {
            checkCaller();
            return PreferenceEditor.getPreferences(RemoteService.this, preferenceFile);
        }

        public void setPreference(String preferenceFile, String key, String preference) {
            checkCaller();
            PreferenceEditor.setPreference(RemoteService.this, preferenceFile, key, preference);
        }
    };

    public IBinder onBind(Intent intent) {
        return this.mBinder;
    }
}
