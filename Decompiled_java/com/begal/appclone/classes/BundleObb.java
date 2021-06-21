package com.begal.appclone.classes;

import android.content.Context;
import android.os.Environment;
import android.util.Log;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

public class BundleObb {
    private static final String TAG = BundleObb.class.getSimpleName();
    private boolean mBundleObb;

    public BundleObb(CloneSettings cloneSettings) {
        this.mBundleObb = cloneSettings.getBoolean("bundleObb", false).booleanValue();
        String str = TAG;
        Log.i(str, "BundleObb; mBundleObb: " + this.mBundleObb);
    }

    /* JADX WARNING: Unknown top exception splitter block from list: {B:32:0x00b3=Splitter:B:32:0x00b3, B:52:0x00f4=Splitter:B:52:0x00f4, B:46:0x00ed=Splitter:B:46:0x00ed} */
    public void init(Context context) {
        FileOutputStream fos;
        if (this.mBundleObb) {
            try {
                File packageObbDirectory = getPackageObbDirectory(context.getPackageName());
                File versionCodeFile = new File(packageObbDirectory, Integer.toString(getApplicationVersionCode(context)));
                if (packageObbDirectory.exists()) {
                    if (versionCodeFile.exists()) {
                        Log.i(TAG, "init; not unbundling OBB files");
                        return;
                    }
                }
                Log.i(TAG, "init; unbundling OBB files");
                long ts = System.currentTimeMillis();
                try {
                    deleteDirectory(packageObbDirectory);
                    Utils.forceMkdir(packageObbDirectory);
                    ZipInputStream zis = new ZipInputStream(context.getAssets().open("obb.zip"));
                    while (true) {
                        ZipEntry nextEntry = zis.getNextEntry();
                        ZipEntry entry = nextEntry;
                        if (nextEntry != null) {
                            String name = entry.getName();
                            String str = TAG;
                            Log.i(str, "init; name: " + name);
                            File file = new File(packageObbDirectory, name);
                            FileOutputStream fos2 = new FileOutputStream(file);
                            try {
                                Utils.copy(zis, fos2);
                                try {
                                    fos2.close();
                                } catch (Exception e) {
                                }
                                String str2 = TAG;
                                Log.i(str2, "init; file: " + file + ", file.length(): " + file.length());
                            } catch (Throwable th) {
                                try {
                                    zis.close();
                                } catch (Exception e2) {
                                }
                                throw th;
                            }
                        } else {
                            try {
                                break;
                            } catch (Exception e3) {
                            }
                        }
                    }
                    zis.close();
                    fos = new FileOutputStream(versionCodeFile);
                    fos.write(0);
                    try {
                        fos.close();
                    } catch (Exception e4) {
                    }
                    String str3 = TAG;
                    Log.i(str3, "init; took: " + (System.currentTimeMillis() - ts) + " millis");
                } catch (Throwable th2) {
                    String str4 = TAG;
                    Log.i(str4, "init; took: " + (System.currentTimeMillis() - ts) + " millis");
                    throw th2;
                }
            } catch (Exception e5) {
                Log.w(TAG, e5);
            }
        }
    }

    public static int getApplicationVersionCode(Context context, String packageName) {
        try {
            return context.getPackageManager().getPackageInfo(packageName, 0).versionCode;
        } catch (Exception e) {
            return -1;
        }
    }

    public static int getApplicationVersionCode(Context context) {
        return getApplicationVersionCode(context, context.getPackageName());
    }

    private static File getObbDirectory() {
        return new File(Environment.getExternalStorageDirectory(), "/Android/obb/");
    }

    private static File getPackageObbDirectory(String packageName) {
        return new File(getObbDirectory(), packageName);
    }

    public static void cleanDirectory(File directory) throws IOException {
        if (!directory.exists()) {
            throw new IllegalArgumentException(directory + " does not exist");
        } else if (!directory.isDirectory()) {
            throw new IllegalArgumentException(directory + " is not a directory");
        } else {
            File[] files = directory.listFiles();
            if (files == null) {
                throw new IOException("Failed to list contents of " + directory);
            }
            IOException exception = null;
            for (File file : files) {
                try {
                    forceDelete(file);
                } catch (IOException ioe) {
                    exception = ioe;
                }
            }
            if (exception != null) {
                throw exception;
            }
        }
    }

    public static void forceDelete(File file) throws IOException {
        if (file.isDirectory()) {
            deleteDirectory(file);
            return;
        }
        boolean filePresent = file.exists();
        if (file.delete()) {
            return;
        }
        if (!filePresent) {
            throw new FileNotFoundException("File does not exist: " + file);
        }
        throw new IOException("Unable to delete file: " + file);
    }

    public static void deleteDirectory(File directory) throws IOException {
        if (directory.exists()) {
            if (!isSymlink(directory)) {
                cleanDirectory(directory);
            }
            if (!directory.delete()) {
                throw new IOException("Unable to delete directory " + directory + ".");
            }
        }
    }

    public static boolean isSymlink(File file) throws IOException {
        File fileInCanonicalDir;
        if (file == null) {
            throw new NullPointerException("File must not be null");
        }
        if (file.getParent() == null) {
            fileInCanonicalDir = file;
        } else {
            fileInCanonicalDir = new File(file.getParentFile().getCanonicalFile(), file.getName());
        }
        if (fileInCanonicalDir.getCanonicalFile().equals(fileInCanonicalDir.getAbsoluteFile())) {
            return false;
        }
        return true;
    }
}
