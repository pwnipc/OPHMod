package android.os;

import android.annotation.TargetApi;
import android.util.Log;
import java.io.File;
import java.util.HashSet;
import java.util.Set;

public class Environmenu {
    public static String DIRECTORY_ALARMS = "Alarms";
    public static String DIRECTORY_DCIM = "DCIM";
    public static String DIRECTORY_DOCUMENTS = "Documents";
    public static String DIRECTORY_DOWNLOADS = "Download";
    public static String DIRECTORY_MOVIES = "Movies";
    public static String DIRECTORY_MUSIC = "Music";
    public static String DIRECTORY_NOTIFICATIONS = "Notifications";
    public static String DIRECTORY_PICTURES = "Pictures";
    public static String DIRECTORY_PODCASTS = "Podcasts";
    public static String DIRECTORY_RINGTONES = "Ringtones";
    public static final String MEDIA_BAD_REMOVAL = "bad_removal";
    public static final String MEDIA_CHECKING = "checking";
    public static final String MEDIA_EJECTING = "ejecting";
    public static final String MEDIA_MOUNTED = "mounted";
    public static final String MEDIA_MOUNTED_READ_ONLY = "mounted_ro";
    public static final String MEDIA_NOFS = "nofs";
    public static final String MEDIA_REMOVED = "removed";
    public static final String MEDIA_SHARED = "shared";
    public static final String MEDIA_UNKNOWN = "unknown";
    public static final String MEDIA_UNMOUNTABLE = "unmountable";
    public static final String MEDIA_UNMOUNTED = "unmounted";
    public static final String[] STANDARD_DIRECTORIES = {DIRECTORY_MUSIC, DIRECTORY_PODCASTS, DIRECTORY_RINGTONES, DIRECTORY_ALARMS, DIRECTORY_NOTIFICATIONS, DIRECTORY_PICTURES, DIRECTORY_MOVIES, DIRECTORY_DOWNLOADS, DIRECTORY_DCIM, DIRECTORY_DOCUMENTS};
    private static final String TAG = Environmenu.class.getSimpleName();
    private static String externalStorageEncapsulationName;
    private static Set<File> sExistingDirectories = new HashSet();

    static {
        externalStorageEncapsulationName = "//////////////////////////////////////////////////";
        String str = TAG;
        Log.i(str, "static initializer; externalStorageEncapsulationName (1): " + externalStorageEncapsulationName);
        int pos = -1;
        int n = 0;
        while (true) {
            if (n >= externalStorageEncapsulationName.length()) {
                break;
            } else if (externalStorageEncapsulationName.charAt(n) != '/') {
                pos = n;
                break;
            } else {
                n++;
            }
        }
        if (pos != -1) {
            externalStorageEncapsulationName = externalStorageEncapsulationName.substring(pos);
        } else {
            externalStorageEncapsulationName = null;
        }
        String str2 = TAG;
        Log.i(str2, "static initializer; externalStorageEncapsulationName (2): " + externalStorageEncapsulationName);
    }

    public static boolean isStandardDirectory(String dir) {
        for (String valid : STANDARD_DIRECTORIES) {
            if (valid.equals(dir)) {
                return true;
            }
        }
        return false;
    }

    public static File getDataDirectory() {
        return Environment.getDataDirectory();
    }

    public static File getDownloadCacheDirectory() {
        return Environment.getDownloadCacheDirectory();
    }

    public static File getExternalStorageDirectory() {
        File file = Environment.getExternalStorageDirectory();
        synchronized (Environmenu.class) {
            if (externalStorageEncapsulationName != null) {
                file = new File(file, externalStorageEncapsulationName);
                if (!sExistingDirectories.contains(file)) {
                    String str = TAG;
                    Log.i(str, "getExternalStorageDirectory; file: " + file);
                    if (file.exists() && file.isDirectory()) {
                        sExistingDirectories.add(file);
                    } else if (file.mkdirs()) {
                        sExistingDirectories.add(file);
                    } else {
                        Log.i(TAG, "getExternalStorageDirectory; mkdirs() failed");
                    }
                }
            } else {
                Log.i(TAG, "getExternalStorageDirectory; externalStorageEncapsulationName == null");
            }
        }
        return file;
    }

    public static File getExternalStoragePublicDirectory(String type) {
        File directory = Environment.getExternalStoragePublicDirectory(type);
        String str = TAG;
        Log.i(str, "getExternalStoragePublicDirectory; type: " + type + ", directory: " + directory);
        File newDirectory = new File(getExternalStorageDirectory(), directory.getName());
        String str2 = TAG;
        Log.i(str2, "getExternalStoragePublicDirectory; newDirectory: " + newDirectory);
        return newDirectory;
    }

    public static String getExternalStorageState() {
        return Environment.getExternalStorageState();
    }

    @TargetApi(21)
    public static String getExternalStorageState(File path) {
        return Environment.getExternalStorageState(path);
    }

    public static File getRootDirectory() {
        return Environment.getRootDirectory();
    }

    @TargetApi(19)
    public static String getStorageState(File path) {
        return Environment.getStorageState(path);
    }

    public static boolean isExternalStorageEmulated() {
        return Environment.isExternalStorageEmulated();
    }

    @TargetApi(21)
    public static boolean isExternalStorageEmulated(File path) {
        return Environment.isExternalStorageEmulated(path);
    }

    public static boolean isExternalStorageRemovable() {
        return Environment.isExternalStorageRemovable();
    }

    @TargetApi(21)
    public static boolean isExternalStorageRemovable(File path) {
        return Environment.isExternalStorageRemovable(path);
    }
}
