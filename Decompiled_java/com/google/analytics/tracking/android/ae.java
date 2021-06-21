package com.google.analytics.tracking.android;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import com.google.analytics.tracking.android.e;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: Source */
final class ae implements d {
    /* access modifiers changed from: private */
    public static final String Code = String.format("CREATE TABLE IF NOT EXISTS %s ( '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%s' INTEGER NOT NULL, '%s' TEXT NOT NULL, '%s' TEXT NOT NULL, '%s' INTEGER);", new Object[]{"hits2", "hit_id", "hit_time", "hit_url", "hit_string", "hit_app_id"});
    /* access modifiers changed from: private */
    public final Context B;
    /* access modifiers changed from: private */
    public final String C;
    private final al I;
    private final e.Code J;
    private volatile l Z;
    private long a;
    /* access modifiers changed from: private */
    public k b;

    ae(e.Code code, Context context) {
        this(code, context, "google_analytics_v2.db");
    }

    private ae(e.Code code, Context context, String str) {
        this.B = context.getApplicationContext();
        this.C = str;
        this.J = code;
        this.b = new k() {
            public final long Code() {
                return System.currentTimeMillis();
            }
        };
        this.I = new al(this, this.B, this.C);
        this.Z = new l(new Code(), this.B);
        this.a = 0;
    }

    /* compiled from: Source */
    final class Code {
        Code() {
        }
    }

    public final void Code() {
        boolean z = true;
        SQLiteDatabase Code2 = Code("Error opening database for clearHits");
        if (Code2 != null) {
            if (0 == 0) {
                Code2.delete("hits2", (String) null, (String[]) null);
            } else {
                Long l = 0L;
                Code2.delete("hits2", "hit_app_id = ?", new String[]{l.toString()});
            }
            e.Code code = this.J;
            if (J() != 0) {
                z = false;
            }
            code.Code(z);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:29:0x00dc  */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x00e4  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x00ff  */
    public final void Code(Map map, long j, String str, Collection collection) {
        long j2;
        boolean z = true;
        long Code2 = this.b.Code();
        if (Code2 > this.a + 86400000) {
            this.a = Code2;
            SQLiteDatabase Code3 = Code("Error opening database for deleteStaleHits");
            if (Code3 != null) {
                Code3.delete("hits2", "HIT_TIME < ?", new String[]{Long.toString(this.b.Code() - 2592000000L)});
                e.Code code = this.J;
                if (J() != 0) {
                    z = false;
                }
                code.Code(z);
            }
        }
        Iterator it = collection.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            aa aaVar = (aa) it.next();
            if (aaVar.Code().equals("appendVersion")) {
                String Z2 = aaVar.Z();
                String I2 = aaVar.I();
                String str2 = Z2 == null ? "" : Z2;
                if (I2 != null) {
                    map.put(I2, str2);
                }
            }
        }
        int J2 = (J() - 2000) + 1;
        if (J2 > 0) {
            List Code4 = Code(J2);
            af.a("Store full, deleting " + Code4.size() + " hits to make room");
            Code((Collection) Code4);
        }
        SQLiteDatabase Code5 = Code("Error opening database for putHit");
        if (Code5 != null) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("hit_string", Code(map));
            contentValues.put("hit_time", Long.valueOf(j));
            if (map.containsKey("AppUID")) {
                try {
                    j2 = Long.parseLong((String) map.get("AppUID"));
                } catch (NumberFormatException e) {
                }
                contentValues.put("hit_app_id", Long.valueOf(j2));
                if (str == null) {
                    str = "http://www.google-analytics.com/collect";
                }
                if (str.length() != 0) {
                    af.C("empty path: not sending hit");
                    return;
                }
                contentValues.put("hit_url", str);
                try {
                    Code5.insert("hits2", (String) null, contentValues);
                    this.J.Code(false);
                    return;
                } catch (SQLiteException e2) {
                    af.C("Error storing hit");
                    return;
                }
            }
            j2 = 0;
            contentValues.put("hit_app_id", Long.valueOf(j2));
            if (str == null) {
            }
            if (str.length() != 0) {
            }
        }
    }

    private static String Code(Map map) {
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry entry : map.entrySet()) {
            arrayList.add(((String) entry.getKey()) + "=" + ad.Code((String) entry.getValue()));
        }
        return TextUtils.join("&", arrayList);
    }

    /* JADX WARNING: Removed duplicated region for block: B:38:0x0113  */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x0169  */
    private List Code(int i) {
        Cursor cursor;
        Cursor query;
        ArrayList<ac> arrayList;
        SQLiteDatabase Code2 = Code("Error opening database for peekHits");
        if (Code2 == null) {
            return new ArrayList();
        }
        Cursor cursor2 = null;
        new ArrayList();
        try {
            query = Code2.query("hits2", new String[]{"hit_id", "hit_time", "hit_url"}, (String) null, (String[]) null, (String) null, (String) null, String.format("%s ASC, %s ASC", new Object[]{"hit_url", "hit_id"}), Integer.toString(i));
            try {
                arrayList = new ArrayList<>();
                if (query.moveToFirst()) {
                    do {
                        ac acVar = new ac(query.getLong(0), query.getLong(1));
                        acVar.I(query.getString(2));
                        arrayList.add(acVar);
                    } while (query.moveToNext());
                }
                if (query != null) {
                    query.close();
                }
                try {
                    Cursor query2 = Code2.query("hits2", new String[]{"hit_id", "hit_string"}, (String) null, (String[]) null, (String) null, (String) null, String.format("%s ASC", new Object[]{"hit_id"}), Integer.toString(i));
                    try {
                        if (query2.moveToFirst()) {
                            int i2 = 0;
                            while (true) {
                                if (!(query2 instanceof SQLiteCursor) || ((SQLiteCursor) query2).getWindow().getNumRows() > 0) {
                                    ((ac) arrayList.get(i2)).Code(query2.getString(1));
                                } else {
                                    af.C("hitString for hitId " + ((ac) arrayList.get(i2)).I() + " too large.  Hit will be deleted.");
                                }
                                int i3 = i2 + 1;
                                if (!query2.moveToNext()) {
                                    break;
                                }
                                i2 = i3;
                            }
                        }
                        if (query2 != null) {
                            query2.close();
                        }
                        return arrayList;
                    } catch (SQLiteException e) {
                        e = e;
                        query = query2;
                    } catch (Throwable th) {
                        th = th;
                        query = query2;
                        if (query != null) {
                            query.close();
                        }
                        throw th;
                    }
                } catch (SQLiteException e2) {
                    e = e2;
                }
            } catch (SQLiteException e3) {
                e = e3;
                cursor = query;
                try {
                    af.C("error in peekHits fetching hitIds: " + e.getMessage());
                    ArrayList arrayList2 = new ArrayList();
                    if (cursor == null) {
                        return arrayList2;
                    }
                    cursor.close();
                    return arrayList2;
                } catch (Throwable th2) {
                    th = th2;
                    cursor2 = cursor;
                    if (cursor2 != null) {
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                cursor2 = query;
                if (cursor2 != null) {
                    cursor2.close();
                }
                throw th;
            }
        } catch (SQLiteException e4) {
            e = e4;
            cursor = null;
        } catch (Throwable th4) {
            th = th4;
            if (cursor2 != null) {
            }
            throw th;
        }
        try {
            af.C("error in peekHits fetching hitString: " + e.getMessage());
            ArrayList arrayList3 = new ArrayList();
            boolean z = false;
            for (ac acVar2 : arrayList) {
                if (TextUtils.isEmpty(acVar2.Code())) {
                    if (z) {
                        break;
                    }
                    z = true;
                }
                arrayList3.add(acVar2);
            }
            if (query != null) {
                query.close();
            }
            return arrayList3;
        } catch (Throwable th5) {
            th = th5;
            if (query != null) {
            }
            throw th;
        }
    }

    private void Code(Collection collection) {
        SQLiteDatabase Code2;
        boolean z = false;
        if (collection == null) {
            throw new NullPointerException("hits cannot be null");
        } else if (!collection.isEmpty() && (Code2 = Code("Error opening database for deleteHit")) != null) {
            String[] strArr = new String[collection.size()];
            String format = String.format("HIT_ID in (%s)", new Object[]{TextUtils.join(",", Collections.nCopies(strArr.length, "?"))});
            Iterator it = collection.iterator();
            int i = 0;
            while (it.hasNext()) {
                strArr[i] = Long.toString(((ac) it.next()).I());
                i++;
            }
            try {
                Code2.delete("hits2", format, strArr);
                e.Code code = this.J;
                if (J() == 0) {
                    z = true;
                }
                code.Code(z);
            } catch (SQLiteException e) {
                af.C("Error deleting hit " + collection);
            }
        }
    }

    private int J() {
        Cursor cursor = null;
        int i = 0;
        SQLiteDatabase Code2 = Code("Error opening database for requestNumHitsPending");
        if (Code2 != null) {
            try {
                Cursor rawQuery = Code2.rawQuery("SELECT COUNT(*) from hits2", (String[]) null);
                if (rawQuery.moveToFirst()) {
                    i = (int) rawQuery.getLong(0);
                }
                if (rawQuery != null) {
                    rawQuery.close();
                }
            } catch (SQLiteException e) {
                af.C("Error getting numStoredHits");
                if (cursor != null) {
                    cursor.close();
                }
            } catch (Throwable th) {
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        }
        return i;
    }

    public final void I() {
        af.B("dispatch running...");
        if (this.Z.Code()) {
            List Code2 = Code(40);
            if (Code2.isEmpty()) {
                af.B("...nothing to dispatch");
                this.J.Code(true);
                return;
            }
            int Code3 = this.Z.Code(Code2);
            af.B("sent " + Code3 + " of " + Code2.size() + " hits");
            Code((Collection) Code2.subList(0, Math.min(Code3, Code2.size())));
            if (Code3 == Code2.size() && J() > 0) {
                e.Code().Z();
            }
        }
    }

    private SQLiteDatabase Code(String str) {
        try {
            return this.I.getWritableDatabase();
        } catch (SQLiteException e) {
            af.C(str);
            return null;
        }
    }
}
