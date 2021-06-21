package com.google.analytics.tracking.android;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Build;
import java.io.File;
import java.util.HashSet;

/* compiled from: Source */
final class al extends SQLiteOpenHelper {
    private boolean Code;
    private long I = 0;
    private /* synthetic */ ae Z;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    al(ae aeVar, Context context, String str) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, 1);
        this.Z = aeVar;
    }

    /* JADX WARNING: Removed duplicated region for block: B:16:0x0044  */
    private static boolean Code(String str, SQLiteDatabase sQLiteDatabase) {
        Cursor cursor;
        Cursor cursor2 = null;
        try {
            Cursor query = sQLiteDatabase.query("SQLITE_MASTER", new String[]{"name"}, "name=?", new String[]{str}, (String) null, (String) null, (String) null);
            try {
                boolean moveToFirst = query.moveToFirst();
                if (query == null) {
                    return moveToFirst;
                }
                query.close();
                return moveToFirst;
            } catch (SQLiteException e) {
                cursor = query;
            } catch (Throwable th) {
                th = th;
                cursor2 = query;
                if (cursor2 != null) {
                }
                throw th;
            }
        } catch (SQLiteException e2) {
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            if (cursor2 != null) {
                cursor2.close();
            }
            throw th;
        }
        try {
            af.C("error querying for table " + str);
            if (cursor != null) {
                cursor.close();
            }
            return false;
        } catch (Throwable th3) {
            cursor2 = cursor;
            th = th3;
            if (cursor2 != null) {
            }
            throw th;
        }
    }

    public final SQLiteDatabase getWritableDatabase() {
        if (!this.Code || this.I + 3600000 <= this.Z.b.Code()) {
            SQLiteDatabase sQLiteDatabase = null;
            this.Code = true;
            this.I = this.Z.b.Code();
            try {
                sQLiteDatabase = super.getWritableDatabase();
            } catch (SQLiteException e) {
                this.Z.B.getDatabasePath(this.Z.C).delete();
            }
            if (sQLiteDatabase == null) {
                sQLiteDatabase = super.getWritableDatabase();
            }
            this.Code = false;
            return sQLiteDatabase;
        }
        throw new SQLiteException("Database creation failed");
    }

    /* JADX INFO: finally extract failed */
    public final void onOpen(SQLiteDatabase sQLiteDatabase) {
        boolean z = false;
        if (Build.VERSION.SDK_INT < 15) {
            Cursor rawQuery = sQLiteDatabase.rawQuery("PRAGMA journal_mode=memory", (String[]) null);
            try {
                rawQuery.moveToFirst();
            } finally {
                rawQuery.close();
            }
        }
        if (!Code("hits2", sQLiteDatabase)) {
            sQLiteDatabase.execSQL(ae.Code);
            return;
        }
        Cursor rawQuery2 = sQLiteDatabase.rawQuery("SELECT * FROM hits2 WHERE 0", (String[]) null);
        HashSet hashSet = new HashSet();
        try {
            String[] columnNames = rawQuery2.getColumnNames();
            for (String add : columnNames) {
                hashSet.add(add);
            }
            rawQuery2.close();
            if (!hashSet.remove("hit_id") || !hashSet.remove("hit_url") || !hashSet.remove("hit_string") || !hashSet.remove("hit_time")) {
                throw new SQLiteException("Database column missing");
            }
            if (!hashSet.remove("hit_app_id")) {
                z = true;
            }
            if (!hashSet.isEmpty()) {
                throw new SQLiteException("Database has extra columns");
            } else if (z) {
                sQLiteDatabase.execSQL("ALTER TABLE hits2 ADD COLUMN hit_app_id");
            }
        } catch (Throwable th) {
            rawQuery2.close();
            throw th;
        }
    }

    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        String path = sQLiteDatabase.getPath();
        if (r.Code() >= 9) {
            File file = new File(path);
            file.setReadable(false, false);
            file.setWritable(false, false);
            file.setReadable(true, true);
            file.setWritable(true, true);
        }
    }

    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }
}
