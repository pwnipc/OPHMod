package com.google.android.apps.analytics;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import java.util.HashSet;

final class q extends SQLiteOpenHelper {
    private final p Code;

    q(Context context, String str, p pVar) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, 5);
        this.Code = pVar;
    }

    private static void Code(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS custom_variables;");
        sQLiteDatabase.execSQL(p.g);
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS custom_var_cache;");
        sQLiteDatabase.execSQL(p.h);
        for (int i = 1; i <= 5; i++) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("event_id", 0);
            contentValues.put("cv_index", Integer.valueOf(i));
            contentValues.put("cv_name", "");
            contentValues.put("cv_scope", 3);
            contentValues.put("cv_value", "");
            sQLiteDatabase.insert("custom_var_cache", "event_id", contentValues);
        }
    }

    private static void I(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS transaction_events;");
        sQLiteDatabase.execSQL(p.i);
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS item_events;");
        sQLiteDatabase.execSQL(p.j);
    }

    private static void J(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS referrer;");
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS referrer (referrer TEXT PRIMARY KEY NOT NULL,timestamp_referrer INTEGER NOT NULL,referrer_visit INTEGER NOT NULL DEFAULT 1,referrer_index INTEGER NOT NULL DEFAULT 1);");
    }

    private static void Z(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS hits;");
        sQLiteDatabase.execSQL(p.k);
    }

    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS events;");
        sQLiteDatabase.execSQL(p.e);
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS install_referrer;");
        sQLiteDatabase.execSQL("CREATE TABLE install_referrer (referrer TEXT PRIMARY KEY NOT NULL);");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS session;");
        sQLiteDatabase.execSQL(p.f);
        Code(sQLiteDatabase);
        I(sQLiteDatabase);
        Z(sQLiteDatabase);
        J(sQLiteDatabase);
    }

    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        Log.w("GoogleAnalyticsTracker", "Downgrading database version from " + i + " to " + i2 + " not recommended.");
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS referrer (referrer TEXT PRIMARY KEY NOT NULL,timestamp_referrer INTEGER NOT NULL,referrer_visit INTEGER NOT NULL DEFAULT 1,referrer_index INTEGER NOT NULL DEFAULT 1);");
        sQLiteDatabase.execSQL(p.k);
        sQLiteDatabase.execSQL(p.h);
        sQLiteDatabase.execSQL(p.f);
        HashSet hashSet = new HashSet();
        Cursor query = sQLiteDatabase.query("custom_var_cache", (String[]) null, (String) null, (String[]) null, (String) null, (String) null, (String) null, (String) null);
        while (query.moveToNext()) {
            try {
                hashSet.add(Integer.valueOf(query.getInt(query.getColumnIndex("cv_index"))));
            } catch (SQLiteException e) {
                Log.e("GoogleAnalyticsTracker", "Error on downgrade: " + e.toString());
            } finally {
                query.close();
            }
        }
        int i3 = 1;
        while (true) {
            int i4 = i3;
            if (i4 <= 5) {
                try {
                    if (!hashSet.contains(Integer.valueOf(i4))) {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("event_id", 0);
                        contentValues.put("cv_index", Integer.valueOf(i4));
                        contentValues.put("cv_name", "");
                        contentValues.put("cv_scope", 3);
                        contentValues.put("cv_value", "");
                        sQLiteDatabase.insert("custom_var_cache", "event_id", contentValues);
                    }
                } catch (SQLiteException e2) {
                    Log.e("GoogleAnalyticsTracker", "Error inserting custom variable on downgrade: " + e2.toString());
                }
                i3 = i4 + 1;
            } else {
                return;
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:52:0x00f7  */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x0100  */
    public final void onOpen(SQLiteDatabase sQLiteDatabase) {
        Cursor cursor;
        Cursor cursor2;
        t tVar;
        if (sQLiteDatabase.isReadOnly()) {
            Log.w("GoogleAnalyticsTracker", "Warning: Need to update database, but it's read only.");
            return;
        }
        try {
            cursor = sQLiteDatabase.query("referrer", (String[]) null, (String) null, (String[]) null, (String) null, (String) null, (String) null);
            try {
                String[] columnNames = cursor.getColumnNames();
                boolean z = false;
                boolean z2 = false;
                for (int i = 0; i < columnNames.length; i++) {
                    if (columnNames[i].equals("referrer_index")) {
                        z2 = true;
                    } else if (columnNames[i].equals("referrer_visit")) {
                        z = true;
                    }
                }
                if (!z2 || !z) {
                    if (cursor.moveToFirst()) {
                        int columnIndex = cursor.getColumnIndex("referrer_visit");
                        int columnIndex2 = cursor.getColumnIndex("referrer_index");
                        tVar = new t(cursor.getString(cursor.getColumnIndex("referrer")), cursor.getLong(cursor.getColumnIndex("timestamp_referrer")), columnIndex == -1 ? 1 : cursor.getInt(columnIndex), columnIndex2 == -1 ? 1 : cursor.getInt(columnIndex2));
                    } else {
                        tVar = null;
                    }
                    sQLiteDatabase.beginTransaction();
                    J(sQLiteDatabase);
                    if (tVar != null) {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("referrer", tVar.Code());
                        contentValues.put("timestamp_referrer", Long.valueOf(tVar.I()));
                        contentValues.put("referrer_visit", Integer.valueOf(tVar.Z()));
                        contentValues.put("referrer_index", Integer.valueOf(tVar.J()));
                        sQLiteDatabase.insert("referrer", (String) null, contentValues);
                    }
                    sQLiteDatabase.setTransactionSuccessful();
                }
                if (cursor != null) {
                    cursor.close();
                }
                if (sQLiteDatabase.inTransaction()) {
                    boolean unused = p.J(sQLiteDatabase);
                }
            } catch (SQLiteException e) {
                e = e;
                cursor2 = cursor;
                try {
                    Log.e("GoogleAnalyticsTracker", e.toString());
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    if (sQLiteDatabase.inTransaction()) {
                        boolean unused2 = p.J(sQLiteDatabase);
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor = cursor2;
                    if (cursor != null) {
                    }
                    if (sQLiteDatabase.inTransaction()) {
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                if (cursor != null) {
                }
                if (sQLiteDatabase.inTransaction()) {
                }
                throw th;
            }
        } catch (SQLiteException e2) {
            e = e2;
            cursor2 = null;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
            if (cursor != null) {
                cursor.close();
            }
            if (sQLiteDatabase.inTransaction()) {
                boolean unused3 = p.J(sQLiteDatabase);
            }
            throw th;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:44:0x00fe, code lost:
        r4.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:46:0x0103, code lost:
        r3.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:47:0x0108, code lost:
        r2 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:48:0x0109, code lost:
        r3 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:0x010c, code lost:
        r11.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:52:0x0111, code lost:
        r3.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:57:0x011a, code lost:
        r2 = e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:58:0x011b, code lost:
        r3 = null;
        r4 = r11;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:69:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:70:?, code lost:
        return;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x00fe  */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x0103  */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x0108 A[ExcHandler: all (th java.lang.Throwable), Splitter:B:22:0x007d] */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x010c  */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x0111  */
    /* JADX WARNING: Removed duplicated region for block: B:69:? A[RETURN, SYNTHETIC] */
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        Cursor cursor;
        Cursor cursor2;
        if (i > i2) {
            onDowngrade(sQLiteDatabase, i, i2);
            return;
        }
        if (i < 2 && i2 > 1) {
            Code(sQLiteDatabase);
        }
        if (i < 3 && i2 > 2) {
            I(sQLiteDatabase);
        }
        if (i < 4 && i2 > 3) {
            Z(sQLiteDatabase);
            J(sQLiteDatabase);
            this.Code.I(sQLiteDatabase);
            p pVar = this.Code;
            p pVar2 = this.Code;
            J unused = pVar.d = p.Code(sQLiteDatabase);
            p pVar3 = this.Code;
            a[] Code2 = p.Code(sQLiteDatabase, i);
            for (a Code3 : Code2) {
                p.Code(this.Code, Code3, sQLiteDatabase);
            }
            sQLiteDatabase.execSQL("DELETE from events;");
            sQLiteDatabase.execSQL("DELETE from item_events;");
            sQLiteDatabase.execSQL("DELETE from transaction_events;");
            sQLiteDatabase.execSQL("DELETE from custom_variables;");
            Cursor cursor3 = null;
            try {
                cursor3 = sQLiteDatabase.query("install_referrer", new String[]{"referrer"}, (String) null, (String[]) null, (String) null, (String) null, (String) null);
                if (cursor3.moveToFirst()) {
                    String string = cursor3.getString(0);
                    cursor = sQLiteDatabase.query("session", (String[]) null, (String) null, (String[]) null, (String) null, (String) null, (String) null);
                    try {
                        long j = cursor.moveToFirst() ? cursor.getLong(0) : 0;
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("referrer", string);
                        contentValues.put("timestamp_referrer", Long.valueOf(j));
                        contentValues.put("referrer_visit", 1);
                        contentValues.put("referrer_index", 1);
                        sQLiteDatabase.insert("referrer", (String) null, contentValues);
                    } catch (SQLiteException e) {
                        e = e;
                        cursor2 = cursor3;
                        try {
                            Log.e("GoogleAnalyticsTracker", e.toString());
                            if (cursor2 != null) {
                            }
                            if (cursor != null) {
                            }
                        } catch (Throwable th) {
                            th = th;
                            cursor3 = cursor2;
                            if (cursor3 != null) {
                            }
                            if (cursor != null) {
                            }
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (cursor3 != null) {
                        }
                        if (cursor != null) {
                        }
                        throw th;
                    }
                } else {
                    cursor = null;
                }
                if (cursor3 != null) {
                    cursor3.close();
                }
                if (cursor != null) {
                    cursor.close();
                }
            } catch (SQLiteException e2) {
                e = e2;
                cursor = null;
                cursor2 = null;
                Log.e("GoogleAnalyticsTracker", e.toString());
                if (cursor2 != null) {
                }
                if (cursor != null) {
                }
            } catch (Throwable th3) {
            }
        }
    }
}
