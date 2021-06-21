package com.opera.mini.android;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.File;
import java.io.IOException;

/* compiled from: Source */
public final class am extends cn {
    private static final String b = ar.a(13);
    private SQLiteStatement B;
    private Context C;
    private SQLiteDatabase I;
    private SQLiteStatement J;
    private SQLiteStatement Z;
    private boolean a = false;

    public static am Code(Context context) {
        if (Code == null) {
            I(context);
        }
        return (am) Code;
    }

    private am(Context context) {
        this.C = context;
    }

    public static void I(Context context) {
        am amVar = new am(context);
        amVar.I();
        amVar.Z = amVar.I.compileStatement("SELECT MAX(record_id) FROM rms WHERE store=?");
        amVar.J = amVar.I.compileStatement("SELECT MIN(record_id) FROM rms WHERE store=? AND record NOT NULL");
        amVar.B = amVar.I.compileStatement("SELECT COUNT(record_id) FROM rms WHERE store=?");
        Code = amVar;
    }

    private synchronized void I() {
        boolean z = true;
        synchronized (this) {
            try {
                File databasePath = this.C.getDatabasePath("operamini.db");
                databasePath.getParentFile().mkdir();
                this.I = SQLiteDatabase.openDatabase(databasePath.getAbsolutePath(), (SQLiteDatabase.CursorFactory) null, 268435472);
                this.I.setLockingEnabled(true);
                if (I.a(this.C.getFilesDir().getAbsolutePath()) > databasePath.length()) {
                    this.I.execSQL("VACUUM");
                }
                int version = this.I.getVersion();
                if (version != 3) {
                    this.I.beginTransaction();
                    if (version == 0) {
                        this.I.execSQL("CREATE TABLE rms (store TEXT, record_id INTEGER,record BLOB, PRIMARY KEY (store, record_id));");
                    } else {
                        SQLiteDatabase sQLiteDatabase = this.I;
                        this.I.execSQL("DROP TABLE IF EXISTS android_metadata;");
                        if (version > 2) {
                            z = false;
                        }
                        this.a = z;
                    }
                    this.I.setVersion(3);
                    this.I.setTransactionSuccessful();
                    this.I.endTransaction();
                }
                SQLiteDatabase sQLiteDatabase2 = this.I;
            } catch (Throwable th) {
                if (this.I != null) {
                    this.I.close();
                    this.I = null;
                }
                throw th;
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x001a, code lost:
        r0 = false;
     */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    public final synchronized boolean Code(String str) {
        boolean z = true;
        synchronized (this) {
            this.B.bindString(1, str);
            if (this.B.simpleQueryForLong() <= 0) {
                z = false;
            }
        }
        return z;
    }

    public final synchronized int Code(String str, byte[] bArr) {
        int simpleQueryForLong;
        this.Z.bindString(1, str);
        this.Z.clearBindings();
        simpleQueryForLong = ((int) this.Z.simpleQueryForLong()) + 1;
        ContentValues contentValues = new ContentValues();
        contentValues.put("store", str);
        contentValues.put("record_id", new Integer(simpleQueryForLong));
        contentValues.put("record", bArr);
        this.I.insert("rms", "record", contentValues);
        return simpleQueryForLong;
    }

    public final byte[] Code(String str, int i) {
        Cursor cursor = null;
        try {
            cursor = this.I.rawQuery("SELECT record FROM rms WHERE store = ? AND record_id = ?", new String[]{str, String.valueOf(i)});
            if (cursor.getCount() == 0) {
                throw new IOException();
            }
            cursor.moveToFirst();
            return cursor.getBlob(0);
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    public final synchronized byte[] I(String str) {
        byte[] blob;
        Cursor cursor = null;
        try {
            this.J.bindString(1, str);
            this.B.bindString(1, str);
            long simpleQueryForLong = this.B.simpleQueryForLong();
            this.B.clearBindings();
            if (simpleQueryForLong == 0) {
                throw new IOException("Record not found");
            }
            String simpleQueryForString = this.J.simpleQueryForString();
            this.J.clearBindings();
            if (simpleQueryForString == null) {
                throw new IOException("Record not found");
            }
            Cursor rawQuery = this.I.rawQuery("SELECT record FROM rms WHERE store=? AND record_id=?", new String[]{str, simpleQueryForString});
            if (rawQuery.getCount() == 0) {
                throw new IOException();
            }
            rawQuery.moveToFirst();
            blob = rawQuery.getBlob(0);
            if (rawQuery != null) {
                rawQuery.close();
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
        return blob;
    }

    public final void Code(String str, int i, byte[] bArr) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("store", str);
        contentValues.put("record_id", new Integer(i));
        contentValues.put("record", bArr);
        if (this.I.replace("rms", "record", contentValues) == -1) {
            throw new IOException("An error occurred in setRecord");
        }
    }

    public final void Z(String str) {
        try {
            this.I.delete("rms", "store='" + str + "'", (String[]) null);
        } catch (IOException e) {
        }
    }

    public final boolean Code(String str, String str2) {
        return B(str, str2) > 0;
    }

    public final void I(String str, String str2) {
        int B2 = B(str, str2);
        if (B2 != -1) {
            Z(str, B2);
        }
    }

    public final void I(String str, int i) {
        Cursor cursor = null;
        try {
            cursor = this.I.rawQuery("SELECT record_id, record FROM rms WHERE store=? AND record NOT NULL", new String[]{str});
            int count = cursor.getCount();
            for (int i2 = 0; i2 < count; i2++) {
                cursor.moveToNext();
                int i3 = cursor.getInt(0);
                byte[] blob = cursor.getBlob(1);
                if (!ar.I(blob)) {
                    Z(str, i3);
                } else if (ar.J(ar.Code(blob, ar.Code(blob))) == i) {
                    Z(str, i3);
                    if (cursor == null) {
                        return;
                    }
                    return;
                }
            }
            if (cursor != null) {
                cursor.close();
            }
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    public final byte[] Z(String str, String str2) {
        int B2 = B(str, str2);
        if (B2 > 0) {
            return Code(str, B2);
        }
        return null;
    }

    public final ax J(String str, String str2) {
        int B2 = B(str, str2);
        if (B2 <= 0) {
            return null;
        }
        byte[] Code = Code(str, B2);
        int Code2 = ar.Code(Code);
        byte[] bArr = new byte[Code2];
        ax axVar = new ax();
        System.arraycopy(Code, 0, bArr, 0, Code2);
        axVar.Code = new DataInputStream(new ByteArrayInputStream(bArr));
        axVar.I = Code2;
        return axVar;
    }

    public final void Code(String str, String str2, byte[] bArr, int i) {
        int B2 = B(str, str2);
        if (B2 > 0) {
            Code(str, B2, ar.Code(str2, bArr, i));
            if (this.a && str.equals(b)) {
                this.I.execSQL("VACUUM");
                this.a = false;
                return;
            }
            return;
        }
        Code(str, ar.Code(str2, bArr, i));
    }

    private int B(String str, String str2) {
        Cursor cursor = null;
        try {
            cursor = this.I.rawQuery("SELECT record_id, record FROM rms WHERE store = ? AND record NOT NULL", new String[]{str});
            int count = cursor.getCount();
            for (int i = 0; i < count; i++) {
                cursor.moveToNext();
                int i2 = cursor.getInt(0);
                byte[] blob = cursor.getBlob(1);
                if (!ar.I(blob)) {
                    Z(str, i2);
                } else if (ar.Code(blob, ar.Code(blob)).equals(str2)) {
                }
            }
            if (cursor != null) {
                cursor.close();
            }
            return -1;
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    private void Z(String str, int i) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("store", str);
        contentValues.put("record_id", new Integer(i));
        contentValues.putNull("record");
        this.I.replace("rms", "record", contentValues);
    }

    public final void Code() {
        if (this.I != null) {
            this.I.close();
            this.I = null;
        }
    }
}
