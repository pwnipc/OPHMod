package com.google.android.apps.analytics;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.util.Log;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Random;

final class p implements h {
    /* access modifiers changed from: private */
    public static final String e = ("CREATE TABLE events (" + String.format(" '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,", new Object[]{"event_id"}) + String.format(" '%s' INTEGER NOT NULL,", new Object[]{"user_id"}) + String.format(" '%s' CHAR(256) NOT NULL,", new Object[]{"account_id"}) + String.format(" '%s' INTEGER NOT NULL,", new Object[]{"random_val"}) + String.format(" '%s' INTEGER NOT NULL,", new Object[]{"timestamp_first"}) + String.format(" '%s' INTEGER NOT NULL,", new Object[]{"timestamp_previous"}) + String.format(" '%s' INTEGER NOT NULL,", new Object[]{"timestamp_current"}) + String.format(" '%s' INTEGER NOT NULL,", new Object[]{"visits"}) + String.format(" '%s' CHAR(256) NOT NULL,", new Object[]{"category"}) + String.format(" '%s' CHAR(256) NOT NULL,", new Object[]{"action"}) + String.format(" '%s' CHAR(256), ", new Object[]{"label"}) + String.format(" '%s' INTEGER,", new Object[]{"value"}) + String.format(" '%s' INTEGER,", new Object[]{"screen_width"}) + String.format(" '%s' INTEGER);", new Object[]{"screen_height"}));
    /* access modifiers changed from: private */
    public static final String f = ("CREATE TABLE IF NOT EXISTS session (" + String.format(" '%s' INTEGER PRIMARY KEY,", new Object[]{"timestamp_first"}) + String.format(" '%s' INTEGER NOT NULL,", new Object[]{"timestamp_previous"}) + String.format(" '%s' INTEGER NOT NULL,", new Object[]{"timestamp_current"}) + String.format(" '%s' INTEGER NOT NULL,", new Object[]{"visits"}) + String.format(" '%s' INTEGER NOT NULL);", new Object[]{"store_id"}));
    /* access modifiers changed from: private */
    public static final String g = ("CREATE TABLE custom_variables (" + String.format(" '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,", new Object[]{"cv_id"}) + String.format(" '%s' INTEGER NOT NULL,", new Object[]{"event_id"}) + String.format(" '%s' INTEGER NOT NULL,", new Object[]{"cv_index"}) + String.format(" '%s' CHAR(64) NOT NULL,", new Object[]{"cv_name"}) + String.format(" '%s' CHAR(64) NOT NULL,", new Object[]{"cv_value"}) + String.format(" '%s' INTEGER NOT NULL);", new Object[]{"cv_scope"}));
    /* access modifiers changed from: private */
    public static final String h = ("CREATE TABLE IF NOT EXISTS custom_var_cache (" + String.format(" '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,", new Object[]{"cv_id"}) + String.format(" '%s' INTEGER NOT NULL,", new Object[]{"event_id"}) + String.format(" '%s' INTEGER NOT NULL,", new Object[]{"cv_index"}) + String.format(" '%s' CHAR(64) NOT NULL,", new Object[]{"cv_name"}) + String.format(" '%s' CHAR(64) NOT NULL,", new Object[]{"cv_value"}) + String.format(" '%s' INTEGER NOT NULL);", new Object[]{"cv_scope"}));
    /* access modifiers changed from: private */
    public static final String i = ("CREATE TABLE transaction_events (" + String.format(" '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,", new Object[]{"tran_id"}) + String.format(" '%s' INTEGER NOT NULL,", new Object[]{"event_id"}) + String.format(" '%s' TEXT NOT NULL,", new Object[]{"order_id"}) + String.format(" '%s' TEXT,", new Object[]{"tran_storename"}) + String.format(" '%s' TEXT NOT NULL,", new Object[]{"tran_totalcost"}) + String.format(" '%s' TEXT,", new Object[]{"tran_totaltax"}) + String.format(" '%s' TEXT);", new Object[]{"tran_shippingcost"}));
    /* access modifiers changed from: private */
    public static final String j = ("CREATE TABLE item_events (" + String.format(" '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,", new Object[]{"item_id"}) + String.format(" '%s' INTEGER NOT NULL,", new Object[]{"event_id"}) + String.format(" '%s' TEXT NOT NULL,", new Object[]{"order_id"}) + String.format(" '%s' TEXT NOT NULL,", new Object[]{"item_sku"}) + String.format(" '%s' TEXT,", new Object[]{"item_name"}) + String.format(" '%s' TEXT,", new Object[]{"item_category"}) + String.format(" '%s' TEXT NOT NULL,", new Object[]{"item_price"}) + String.format(" '%s' TEXT NOT NULL);", new Object[]{"item_count"}));
    /* access modifiers changed from: private */
    public static final String k = ("CREATE TABLE IF NOT EXISTS hits (" + String.format(" '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,", new Object[]{"hit_id"}) + String.format(" '%s' TEXT NOT NULL,", new Object[]{"hit_string"}) + String.format(" '%s' INTEGER NOT NULL);", new Object[]{"hit_time"}));
    private long B;
    private int C;
    private q Code;
    private int I;
    private long J;
    private long Z;
    private volatile int a;
    private boolean b;
    private Random c;
    /* access modifiers changed from: private */
    public J d;

    p(Context context) {
        this(context, "google_analytics.db");
    }

    private p(Context context, String str) {
        this.c = new Random();
        this.Code = new q(context, str, this);
        try {
            I(this.Code.getWritableDatabase());
        } catch (SQLiteException e2) {
            Log.e("GoogleAnalyticsTracker", e2.toString());
        }
        this.d = f();
    }

    /* JADX WARNING: Removed duplicated region for block: B:20:0x0073  */
    private static t B(SQLiteDatabase sQLiteDatabase) {
        Cursor cursor;
        Cursor cursor2;
        t tVar;
        try {
            cursor = sQLiteDatabase.query("referrer", new String[]{"referrer", "timestamp_referrer", "referrer_visit", "referrer_index"}, (String) null, (String[]) null, (String) null, (String) null, (String) null);
            try {
                if (cursor.moveToFirst()) {
                    tVar = new t(cursor.getString(cursor.getColumnIndex("referrer")), cursor.getLong(cursor.getColumnIndex("timestamp_referrer")), cursor.getInt(cursor.getColumnIndex("referrer_visit")), cursor.getInt(cursor.getColumnIndex("referrer_index")));
                } else {
                    tVar = null;
                }
                if (cursor == null) {
                    return tVar;
                }
                cursor.close();
                return tVar;
            } catch (SQLiteException e2) {
                e = e2;
                cursor2 = cursor;
                try {
                    Log.e("GoogleAnalyticsTracker", e.toString());
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    return null;
                } catch (Throwable th) {
                    th = th;
                    cursor = cursor2;
                    if (cursor != null) {
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (SQLiteException e3) {
            e = e3;
            cursor2 = null;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
            if (cursor != null) {
            }
            throw th;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x006f  */
    static J Code(SQLiteDatabase sQLiteDatabase) {
        Cursor cursor;
        J j2 = new J();
        try {
            cursor = sQLiteDatabase.query("custom_var_cache", (String[]) null, "cv_scope= ?", new String[]{Integer.toString(1)}, (String) null, (String) null, (String) null);
            while (cursor.moveToNext()) {
                try {
                    j2.Code(new Z(cursor.getInt(cursor.getColumnIndex("cv_index")), cursor.getString(cursor.getColumnIndex("cv_name")), cursor.getString(cursor.getColumnIndex("cv_value")), cursor.getInt(cursor.getColumnIndex("cv_scope"))));
                } catch (SQLiteException e2) {
                    e = e2;
                    try {
                        Log.e("GoogleAnalyticsTracker", e.toString());
                        if (cursor != null) {
                            cursor.close();
                        }
                        return j2;
                    } catch (Throwable th) {
                        th = th;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
            }
            if (cursor != null) {
                cursor.close();
            }
        } catch (SQLiteException e3) {
            e = e3;
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
            if (cursor != null) {
            }
            throw th;
        }
        return j2;
    }

    /* JADX WARNING: Removed duplicated region for block: B:22:0x0089  */
    private static u Code(long j2, SQLiteDatabase sQLiteDatabase) {
        Cursor cursor;
        try {
            cursor = sQLiteDatabase.query("transaction_events", (String[]) null, "event_id= ?", new String[]{Long.toString(j2)}, (String) null, (String) null, (String) null);
            try {
                if (cursor.moveToFirst()) {
                    u uVar = new u(new v(cursor.getString(cursor.getColumnIndex("order_id")), cursor.getDouble(cursor.getColumnIndex("tran_totalcost"))).Code(cursor.getString(cursor.getColumnIndex("tran_storename"))).Code(cursor.getDouble(cursor.getColumnIndex("tran_totaltax"))).I(cursor.getDouble(cursor.getColumnIndex("tran_shippingcost"))), (byte) 0);
                    if (cursor == null) {
                        return uVar;
                    }
                    cursor.close();
                    return uVar;
                }
                if (cursor != null) {
                    cursor.close();
                }
                return null;
            } catch (SQLiteException e2) {
                e = e2;
                try {
                    Log.e("GoogleAnalyticsTracker", e.toString());
                    if (cursor != null) {
                        cursor.close();
                    }
                    return null;
                } catch (Throwable th) {
                    th = th;
                    if (cursor != null) {
                    }
                    throw th;
                }
            }
        } catch (SQLiteException e3) {
            e = e3;
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    private void Code(a aVar, t tVar, SQLiteDatabase sQLiteDatabase) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("hit_string", g.Code(aVar, tVar));
        contentValues.put("hit_time", 0L);
        sQLiteDatabase.insert("hits", (String) null, contentValues);
        this.a++;
    }

    /* JADX WARNING: Removed duplicated region for block: B:16:0x006a  */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x0160  */
    static /* synthetic */ void Code(p pVar, a aVar, SQLiteDatabase sQLiteDatabase) {
        String[] split;
        J j2;
        if (!aVar.g()) {
            aVar.Code(pVar.c.nextInt(Integer.MAX_VALUE));
            aVar.I((int) pVar.Z);
            aVar.Z((int) pVar.J);
            aVar.J((int) pVar.B);
            aVar.B(pVar.C);
        }
        aVar.b();
        if (aVar.a() == -1) {
            aVar.C(pVar.I);
        }
        if (!"__##GOOGLEITEM##__".equals(aVar.I) && !"__##GOOGLETRANSACTION##__".equals(aVar.I)) {
            try {
                J j3 = aVar.b;
                if (pVar.b) {
                    if (j3 == null) {
                        j3 = new J();
                        aVar.b = j3;
                    }
                    for (int i2 = 1; i2 <= 5; i2++) {
                        Z I2 = pVar.d.I(i2);
                        Z I3 = j3.I(i2);
                        if (I2 != null && I3 == null) {
                            j3.Code(I2);
                        }
                    }
                    pVar.b = false;
                    j2 = j3;
                } else {
                    j2 = j3;
                }
                if (j2 != null) {
                    for (int i3 = 1; i3 <= 5; i3++) {
                        if (!j2.Code(i3)) {
                            Z I4 = j2.I(i3);
                            ContentValues contentValues = new ContentValues();
                            contentValues.put("event_id", 0);
                            contentValues.put("cv_index", Integer.valueOf(I4.J()));
                            contentValues.put("cv_name", I4.I());
                            contentValues.put("cv_scope", Integer.valueOf(I4.Code()));
                            contentValues.put("cv_value", I4.Z());
                            sQLiteDatabase.update("custom_var_cache", contentValues, "cv_index = ?", new String[]{Integer.toString(I4.J())});
                            if (I4.Code() == 1) {
                                pVar.d.Code(I4);
                            } else {
                                pVar.d.Z(I4.J());
                            }
                        }
                    }
                }
            } catch (SQLiteException e2) {
                Log.e("GoogleAnalyticsTracker", e2.toString());
            }
        }
        t B2 = B(sQLiteDatabase);
        if (B2 != null) {
            if (B2.I() == 0) {
                int J2 = B2.J();
                String Code2 = B2.Code();
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("referrer", Code2);
                contentValues2.put("timestamp_referrer", Long.valueOf(pVar.B));
                contentValues2.put("referrer_visit", Integer.valueOf(pVar.C));
                contentValues2.put("referrer_index", Integer.valueOf(J2));
                if (Code(sQLiteDatabase, contentValues2)) {
                    B2 = new t(Code2, pVar.B, pVar.C, J2);
                }
            }
            split = aVar.Code.split(",");
            if (split.length != 1) {
                pVar.Code(aVar, B2, sQLiteDatabase);
                return;
            }
            for (String aVar2 : split) {
                pVar.Code(new a(aVar, aVar2), B2, sQLiteDatabase);
            }
            return;
        }
        B2 = null;
        split = aVar.Code.split(",");
        if (split.length != 1) {
        }
    }

    private static boolean Code(SQLiteDatabase sQLiteDatabase, ContentValues contentValues) {
        try {
            sQLiteDatabase.beginTransaction();
            sQLiteDatabase.delete("referrer", (String) null, (String[]) null);
            sQLiteDatabase.insert("referrer", (String) null, contentValues);
            sQLiteDatabase.setTransactionSuccessful();
            return !sQLiteDatabase.inTransaction() || J(sQLiteDatabase);
        } catch (SQLiteException e2) {
            Log.e("GoogleAnalyticsTracker", e2.toString());
            if (!sQLiteDatabase.inTransaction() || !J(sQLiteDatabase)) {
            }
            return false;
        } catch (Throwable th) {
            if (sQLiteDatabase.inTransaction() && !J(sQLiteDatabase)) {
                return false;
            }
            throw th;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:30:0x0111  */
    public static a[] Code(SQLiteDatabase sQLiteDatabase, int i2) {
        Cursor cursor;
        Cursor cursor2;
        ArrayList arrayList = new ArrayList();
        try {
            cursor2 = sQLiteDatabase.query("events", (String[]) null, (String) null, (String[]) null, (String) null, (String) null, "event_id", Integer.toString(1000));
            while (cursor2.moveToNext()) {
                try {
                    a aVar = new a(cursor2.getLong(0), cursor2.getString(2), cursor2.getInt(3), cursor2.getInt(4), cursor2.getInt(5), cursor2.getInt(6), cursor2.getInt(7), cursor2.getString(8), cursor2.getString(9), cursor2.getString(10), cursor2.getInt(11), cursor2.getInt(12), cursor2.getInt(13));
                    aVar.C(cursor2.getInt(1));
                    long j2 = cursor2.getLong(cursor2.getColumnIndex("event_id"));
                    if ("__##GOOGLETRANSACTION##__".equals(aVar.I)) {
                        u Code2 = Code(j2, sQLiteDatabase);
                        if (Code2 == null) {
                            Log.w("GoogleAnalyticsTracker", "missing expected transaction for event " + j2);
                        }
                        aVar.Code(Code2);
                    } else if ("__##GOOGLEITEM##__".equals(aVar.I)) {
                        k I2 = I(j2, sQLiteDatabase);
                        if (I2 == null) {
                            Log.w("GoogleAnalyticsTracker", "missing expected item for event " + j2);
                        }
                        aVar.Code(I2);
                    } else {
                        aVar.b = i2 > 1 ? Z(j2, sQLiteDatabase) : new J();
                    }
                    arrayList.add(aVar);
                } catch (SQLiteException e2) {
                    e = e2;
                    cursor = cursor2;
                    try {
                        Log.e("GoogleAnalyticsTracker", e.toString());
                        a[] aVarArr = new a[0];
                        if (cursor == null) {
                            return aVarArr;
                        }
                        cursor.close();
                        return aVarArr;
                    } catch (Throwable th) {
                        th = th;
                        cursor2 = cursor;
                        if (cursor2 != null) {
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    throw th;
                }
            }
            if (cursor2 != null) {
                cursor2.close();
            }
            return (a[]) arrayList.toArray(new a[arrayList.size()]);
        } catch (SQLiteException e3) {
            e = e3;
            cursor = null;
        } catch (Throwable th3) {
            th = th3;
            cursor2 = null;
            if (cursor2 != null) {
            }
            throw th;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:22:0x008f  */
    private static k I(long j2, SQLiteDatabase sQLiteDatabase) {
        Cursor cursor;
        Cursor cursor2;
        try {
            cursor = sQLiteDatabase.query("item_events", (String[]) null, "event_id= ?", new String[]{Long.toString(j2)}, (String) null, (String) null, (String) null);
            try {
                if (cursor.moveToFirst()) {
                    k kVar = new k(new l(cursor.getString(cursor.getColumnIndex("order_id")), cursor.getString(cursor.getColumnIndex("item_sku")), cursor.getDouble(cursor.getColumnIndex("item_price")), cursor.getLong(cursor.getColumnIndex("item_count"))).Code(cursor.getString(cursor.getColumnIndex("item_name"))).I(cursor.getString(cursor.getColumnIndex("item_category"))), (byte) 0);
                    if (cursor == null) {
                        return kVar;
                    }
                    cursor.close();
                    return kVar;
                }
                if (cursor != null) {
                    cursor.close();
                }
                return null;
            } catch (SQLiteException e2) {
                e = e2;
                cursor2 = cursor;
                try {
                    Log.e("GoogleAnalyticsTracker", e.toString());
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    return null;
                } catch (Throwable th) {
                    th = th;
                    cursor = cursor2;
                    if (cursor != null) {
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                if (cursor != null) {
                }
                throw th;
            }
        } catch (SQLiteException e3) {
            e = e3;
            cursor2 = null;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    private static String I(String str) {
        if (str == null) {
            return null;
        }
        if (!str.contains("=")) {
            if (!str.contains("%3D")) {
                return null;
            }
            try {
                str = URLDecoder.decode(str, "UTF-8");
            } catch (UnsupportedEncodingException e2) {
                return null;
            }
        }
        HashMap hashMap = new HashMap();
        for (String split : str.split("&")) {
            String[] split2 = split.split("=");
            if (split2.length > 1) {
                hashMap.put(split2[0], split2[1]);
            } else if (split2.length == 1) {
                hashMap.put(split2[0], (Object) null);
            }
        }
        boolean z = hashMap.get("utm_campaign") != null;
        boolean z2 = hashMap.get("utm_medium") != null;
        boolean z3 = hashMap.get("utm_source") != null;
        if ((hashMap.get("gclid") != null) || (z && z2 && z3)) {
            String[][] strArr = {new String[]{"utmcid", (String) hashMap.get("utm_id")}, new String[]{"utmcsr", (String) hashMap.get("utm_source")}, new String[]{"utmgclid", (String) hashMap.get("gclid")}, new String[]{"utmccn", (String) hashMap.get("utm_campaign")}, new String[]{"utmcmd", (String) hashMap.get("utm_medium")}, new String[]{"utmctr", (String) hashMap.get("utm_term")}, new String[]{"utmcct", (String) hashMap.get("utm_content")}};
            StringBuilder sb = new StringBuilder();
            boolean z4 = true;
            for (int i2 = 0; i2 < strArr.length; i2++) {
                if (strArr[i2][1] != null) {
                    String replace = strArr[i2][1].replace("+", "%20").replace(" ", "%20");
                    if (z4) {
                        z4 = false;
                    } else {
                        sb.append("|");
                    }
                    sb.append(strArr[i2][0]).append("=").append(replace);
                }
            }
            return sb.toString();
        }
        Log.w("GoogleAnalyticsTracker", "Badly formatted referrer missing campaign, medium and source or click ID");
        return null;
    }

    /* access modifiers changed from: private */
    public static boolean J(SQLiteDatabase sQLiteDatabase) {
        try {
            sQLiteDatabase.endTransaction();
            return true;
        } catch (SQLiteException e2) {
            Log.e("GoogleAnalyticsTracker", "exception ending transaction:" + e2.toString());
            return false;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x006e  */
    private static J Z(long j2, SQLiteDatabase sQLiteDatabase) {
        Cursor cursor;
        J j3 = new J();
        try {
            cursor = sQLiteDatabase.query("custom_variables", (String[]) null, "event_id= ?", new String[]{Long.toString(j2)}, (String) null, (String) null, (String) null);
            while (cursor.moveToNext()) {
                try {
                    j3.Code(new Z(cursor.getInt(cursor.getColumnIndex("cv_index")), cursor.getString(cursor.getColumnIndex("cv_name")), cursor.getString(cursor.getColumnIndex("cv_value")), cursor.getInt(cursor.getColumnIndex("cv_scope"))));
                } catch (SQLiteException e2) {
                    e = e2;
                    try {
                        Log.e("GoogleAnalyticsTracker", e.toString());
                        if (cursor != null) {
                            cursor.close();
                        }
                        return j3;
                    } catch (Throwable th) {
                        th = th;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
            }
            if (cursor != null) {
                cursor.close();
            }
        } catch (SQLiteException e3) {
            e = e3;
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
            if (cursor != null) {
            }
            throw th;
        }
        return j3;
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x0061  */
    private f[] e() {
        Cursor cursor;
        ArrayList arrayList = new ArrayList();
        try {
            cursor = this.Code.getReadableDatabase().query("hits", (String[]) null, (String) null, (String[]) null, (String) null, (String) null, "hit_id", Integer.toString(1000));
            while (cursor.moveToNext()) {
                try {
                    arrayList.add(new f(cursor.getString(1), cursor.getLong(0)));
                } catch (SQLiteException e2) {
                    e = e2;
                    try {
                        Log.e("GoogleAnalyticsTracker", e.toString());
                        f[] fVarArr = new f[0];
                        if (cursor == null) {
                            return fVarArr;
                        }
                        cursor.close();
                        return fVarArr;
                    } catch (Throwable th) {
                        th = th;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
            }
            if (cursor != null) {
                cursor.close();
            }
            return (f[]) arrayList.toArray(new f[arrayList.size()]);
        } catch (SQLiteException e3) {
            e = e3;
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
            if (cursor != null) {
            }
            throw th;
        }
    }

    private J f() {
        try {
            return Code(this.Code.getReadableDatabase());
        } catch (SQLiteException e2) {
            Log.e("GoogleAnalyticsTracker", e2.toString());
            return new J();
        }
    }

    private int g() {
        Cursor cursor = null;
        int i2 = 0;
        try {
            Cursor rawQuery = this.Code.getReadableDatabase().rawQuery("SELECT COUNT(*) from hits", (String[]) null);
            if (rawQuery.moveToFirst()) {
                i2 = (int) rawQuery.getLong(0);
            }
            if (rawQuery != null) {
                rawQuery.close();
            }
        } catch (SQLiteException e2) {
            Log.e("GoogleAnalyticsTracker", e2.toString());
            if (cursor != null) {
                cursor.close();
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
        return i2;
    }

    public final synchronized void Code(long j2) {
        try {
            this.a -= this.Code.getWritableDatabase().delete("hits", "hit_id = ?", new String[]{Long.toString(j2)});
        } catch (SQLiteException e2) {
            Log.e("GoogleAnalyticsTracker", e2.toString());
        }
        return;
    }

    public final boolean Code(String str) {
        long j2;
        String I2 = I(str);
        if (I2 == null) {
            return false;
        }
        try {
            SQLiteDatabase writableDatabase = this.Code.getWritableDatabase();
            t B2 = B(writableDatabase);
            ContentValues contentValues = new ContentValues();
            contentValues.put("referrer", I2);
            contentValues.put("timestamp_referrer", 0L);
            contentValues.put("referrer_visit", 0);
            if (B2 != null) {
                j2 = (long) B2.J();
                if (B2.I() > 0) {
                    j2++;
                }
            } else {
                j2 = 1;
            }
            contentValues.put("referrer_index", Long.valueOf(j2));
            if (!Code(writableDatabase, contentValues)) {
                return false;
            }
            Z();
            return true;
        } catch (SQLiteException e2) {
            Log.e("GoogleAnalyticsTracker", e2.toString());
            return false;
        }
    }

    public final f[] Code() {
        return e();
    }

    public final int I() {
        return this.a;
    }

    /* JADX WARNING: Removed duplicated region for block: B:28:0x00bb  */
    public final void I(SQLiteDatabase sQLiteDatabase) {
        Cursor cursor;
        try {
            cursor = sQLiteDatabase.query("session", (String[]) null, (String) null, (String[]) null, (String) null, (String) null, (String) null);
            try {
                if (cursor.moveToFirst()) {
                    this.Z = cursor.getLong(0);
                    this.J = cursor.getLong(1);
                    this.B = cursor.getLong(2);
                    this.C = cursor.getInt(3);
                    this.I = cursor.getInt(4);
                    t B2 = B(sQLiteDatabase);
                    if (!(this.Z == 0 || B2 == null)) {
                        B2.I();
                    }
                } else {
                    this.b = true;
                    this.I = new SecureRandom().nextInt() & Integer.MAX_VALUE;
                    cursor.close();
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("timestamp_first", 0L);
                    contentValues.put("timestamp_previous", 0L);
                    contentValues.put("timestamp_current", 0L);
                    contentValues.put("visits", 0);
                    contentValues.put("store_id", Integer.valueOf(this.I));
                    sQLiteDatabase.insert("session", (String) null, contentValues);
                    cursor = null;
                }
                if (cursor != null) {
                    cursor.close();
                }
            } catch (SQLiteException e2) {
                e = e2;
                try {
                    Log.e("GoogleAnalyticsTracker", e.toString());
                    if (cursor != null) {
                        cursor.close();
                    }
                } catch (Throwable th) {
                    th = th;
                    if (cursor != null) {
                    }
                    throw th;
                }
            }
        } catch (SQLiteException e3) {
            e = e3;
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    public final synchronized void Z() {
        this.b = true;
        this.a = g();
    }
}
