package com.begal.appclone.classes;

import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.util.Log;
import com.begal.appclone.classes.util.SimpleCrypt;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.zip.ZipFile;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class CloneSettings {
    private static final String TAG = CloneSettings.class.getSimpleName();
    private static CloneSettings sCloneSettings;
    private File mCloneSettingsFile;
    private JSONObject mJsonObject;

    public static synchronized CloneSettings getInstance(Context context) {
        CloneSettings cloneSettings;
        synchronized (CloneSettings.class) {
            if (sCloneSettings == null) {
                try {
                    Context applicationContext = context.getApplicationContext();
                    if (applicationContext != null) {
                        context = applicationContext;
                    }
                    if (context instanceof Application) {
                        Field f = ContextWrapper.class.getDeclaredField("mBase");
                        f.setAccessible(true);
                        context = (Context) f.get(context);
                    }
                } catch (Throwable t) {
                    Log.w(TAG, t);
                }
                sCloneSettings = new CloneSettings(context);
            }
            cloneSettings = sCloneSettings;
        }
        return cloneSettings;
    }

    private CloneSettings(Context context) {
        this.mJsonObject = new JSONObject();
        try {
            String json = getDefaultCloneSettingsJson(context);
            File filesDir = context.getFilesDir();
            this.mCloneSettingsFile = new File(filesDir, "cloneSettings_" + Math.abs(json.hashCode()) + ".json");
            String str = TAG;
            Log.i(str, "CloneSettings; mCloneSettingsFile: " + this.mCloneSettingsFile);
            if (this.mCloneSettingsFile.exists()) {
                json = toString(new FileInputStream(this.mCloneSettingsFile));
            } else {
                try {
                    PrintWriter pw = new PrintWriter(this.mCloneSettingsFile, "UTF-8");
                    pw.write(json);
                    pw.close();
                } catch (Exception e) {
                    Log.w(TAG, e);
                }
            }
            this.mJsonObject = new JSONObject(json);
        } catch (Exception e2) {
            Log.w(TAG, e2);
        }
    }

    private CloneSettings() {
        this.mJsonObject = new JSONObject();
        this.mCloneSettingsFile = null;
        this.mJsonObject = new JSONObject();
    }

    private CloneSettings(JSONObject jsonObject) {
        this.mJsonObject = new JSONObject();
        this.mCloneSettingsFile = null;
        this.mJsonObject = jsonObject;
    }

    public File getCloneSettingsFile() {
        return this.mCloneSettingsFile;
    }

    public boolean has(String name) {
        return this.mJsonObject.has(name);
    }

    public String getString(String name, String defaultValue) {
        try {
            return this.mJsonObject.getString(name);
        } catch (Exception e) {
            return defaultValue;
        }
    }

    public Integer getInteger(String name, Integer defaultValue) {
        try {
            return Integer.valueOf(this.mJsonObject.getInt(name));
        } catch (Exception e) {
            return defaultValue;
        }
    }

    public Long getLong(String name, Long defaultValue) {
        try {
            return Long.valueOf(this.mJsonObject.getLong(name));
        } catch (Exception e) {
            return defaultValue;
        }
    }

    public Float getFloat(String name, Float defaultValue) {
        try {
            return Float.valueOf((float) this.mJsonObject.getDouble(name));
        } catch (Exception e) {
            return defaultValue;
        }
    }

    public Double getDouble(String name, Double defaultValue) {
        try {
            return Double.valueOf(this.mJsonObject.getDouble(name));
        } catch (Exception e) {
            return defaultValue;
        }
    }

    public Boolean getBoolean(String name, Boolean defaultValue) {
        try {
            return Boolean.valueOf(this.mJsonObject.getBoolean(name));
        } catch (Exception e) {
            return defaultValue;
        }
    }

    public CloneSettings forObject(String name) {
        try {
            return new CloneSettings(this.mJsonObject.getJSONObject(name));
        } catch (JSONException e) {
            return new CloneSettings();
        }
    }

    public List<CloneSettings> forObjectArray(String name) {
        try {
            List<CloneSettings> list = new ArrayList<>();
            JSONArray arr = this.mJsonObject.getJSONArray(name);
            for (int n = 0; n < arr.length(); n++) {
                list.add(new CloneSettings(arr.getJSONObject(n)));
            }
            return list;
        } catch (Exception e) {
            return null;
        }
    }

    public List<String> getStringList(String name, List<String> defaultValue) {
        try {
            List<String> list = new ArrayList<>();
            JSONArray arr = this.mJsonObject.getJSONArray(name);
            for (int n = 0; n < arr.length(); n++) {
                list.add(arr.getString(n));
            }
            return list;
        } catch (Exception e) {
            return defaultValue;
        }
    }

    public Map<String, String> getStringMap(String name, Map<String, String> defaultValue) {
        try {
            Map<String, String> map = new HashMap<>();
            JSONObject o = this.mJsonObject.getJSONObject(name);
            Iterator<String> it = o.keys();
            while (it.hasNext()) {
                String key = it.next();
                map.put(key, o.getString(key));
            }
            return map;
        } catch (Exception e) {
            return defaultValue;
        }
    }

    private static String getDefaultCloneSettingsJson(Context context) throws IOException {
        String str;
        String str2;
        Log.i(TAG, "getDefaultCloneSettingsJson; ");
        long ts = System.currentTimeMillis();
        try {
            ZipFile zipFile = new ZipFile(context.getPackageManager().getApplicationInfo(context.getPackageName(), 0).publicSourceDir);
            return new SimpleCrypt("UYGy723!Po-efjve").decrypt(toString(zipFile.getInputStream(zipFile.getEntry("cloneSettings.json"))));
        } catch (Exception e) {
            Log.w(TAG, e);
            return toString(context.getAssets().open("cloneSettings.json"));
        } finally {
            String str3 = TAG;
            StringBuilder sb = new StringBuilder();
            str = "getDefaultCloneSettingsJson; took: ";
            sb.append(str);
            sb.append(System.currentTimeMillis() - ts);
            str2 = " millis";
            sb.append(str2);
            Log.i(str3, sb.toString());
        }
    }

    private static String toString(InputStream is) throws IOException {
        BufferedReader r = new BufferedReader(new InputStreamReader(is, "UTF-8"));
        try {
            StringBuilder b = new StringBuilder();
            while (true) {
                String readLine = r.readLine();
                String line = readLine;
                if (readLine == null) {
                    break;
                }
                b.append(line);
                b.append(10);
            }
            return b.toString();
        } finally {
            try {
                r.close();
            } catch (Exception e) {
            }
        }
    }
}
