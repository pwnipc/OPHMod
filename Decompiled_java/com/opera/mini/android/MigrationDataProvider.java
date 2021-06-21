package com.opera.mini.android;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.pm.ApplicationInfo;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.Binder;
import android.os.ParcelFileDescriptor;
import java.io.File;
import java.io.FileNotFoundException;

/* compiled from: Source */
public class MigrationDataProvider extends ContentProvider {
    private File Code;

    public boolean onCreate() {
        if (this.Code == null) {
            ApplicationInfo I = s.I(getContext());
            if (I == null) {
                return false;
            }
            this.Code = new File(I.dataDir);
        }
        return true;
    }

    public ParcelFileDescriptor openFile(Uri uri, String str) {
        File file = new File(this.Code, uri.getPath());
        if (!Code() || !"r".equals(str)) {
            throw new SecurityException();
        } else if (file.exists()) {
            return ParcelFileDescriptor.open(file, 268435456);
        } else {
            throw new FileNotFoundException(uri.getPath());
        }
    }

    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        if (!Code()) {
            throw new SecurityException();
        } else if (strArr == null && str == null && strArr2 == null && str2 == null) {
            String replaceAll = uri.getPath().replaceAll("/", "");
            if ("Branding".equals(replaceAll)) {
                MatrixCursor matrixCursor = new MatrixCursor(new String[]{"Branding"}, 1);
                matrixCursor.addRow(new Object[]{s.Code(getContext())});
                return matrixCursor;
            } else if ("DataDir".equals(replaceAll)) {
                String fragment = uri.getFragment();
                File file = fragment == null ? this.Code : new File(this.Code, fragment);
                MatrixCursor matrixCursor2 = new MatrixCursor(new String[]{"Path"}, 1);
                Code(file, file, matrixCursor2);
                return matrixCursor2;
            } else {
                throw new IllegalArgumentException("uri.getPath() should return 'Branding' or 'DataDir'");
            }
        } else {
            throw new IllegalArgumentException("projection, selection, selectionArgs and sortOrder not supported");
        }
    }

    private void Code(File file, File file2, MatrixCursor matrixCursor) {
        if (file2.isDirectory()) {
            for (File file3 : file2.listFiles()) {
                if (file3.isDirectory()) {
                    Code(file, file3, matrixCursor);
                } else {
                    matrixCursor.addRow(new Object[]{file.toURI().relativize(file3.toURI()).getPath()});
                }
            }
        }
    }

    private boolean Code() {
        String[] packagesForUid = getContext().getPackageManager().getPackagesForUid(Binder.getCallingUid());
        if (packagesForUid == null || packagesForUid.length == 0) {
            return false;
        }
        return s.Code(getContext(), packagesForUid[0], "02354719964C6843335C4E132F2FA87509F36C9F");
    }

    public int delete(Uri uri, String str, String[] strArr) {
        throw new UnsupportedOperationException();
    }

    public String getType(Uri uri) {
        throw new UnsupportedOperationException();
    }

    public Uri insert(Uri uri, ContentValues contentValues) {
        throw new UnsupportedOperationException();
    }

    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException();
    }
}
