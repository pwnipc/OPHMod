package android.support.v4.content;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.content.res.XmlResourceParser;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: Source */
public class FileProvider extends ContentProvider {
    private static final String[] Code = {"_display_name", "_size"};
    private static final File I = new File("/");
    private static HashMap Z = new HashMap();
    private Code J;

    public boolean onCreate() {
        return true;
    }

    public void attachInfo(Context context, ProviderInfo providerInfo) {
        super.attachInfo(context, providerInfo);
        if (providerInfo.exported) {
            throw new SecurityException("Provider must not be exported");
        } else if (!providerInfo.grantUriPermissions) {
            throw new SecurityException("Provider must grant uri permissions");
        } else {
            this.J = Code(context, providerInfo.authority);
        }
    }

    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        int i;
        File Code2 = this.J.Code(uri);
        if (strArr == null) {
            strArr = Code;
        }
        String[] strArr3 = new String[strArr.length];
        Object[] objArr = new Object[strArr.length];
        int length = strArr.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            String str3 = strArr[i2];
            if ("_display_name".equals(str3)) {
                strArr3[i3] = "_display_name";
                i = i3 + 1;
                objArr[i3] = Code2.getName();
            } else if ("_size".equals(str3)) {
                strArr3[i3] = "_size";
                i = i3 + 1;
                objArr[i3] = Long.valueOf(Code2.length());
            } else {
                i = i3;
            }
            i2++;
            i3 = i;
        }
        String[] strArr4 = new String[i3];
        System.arraycopy(strArr3, 0, strArr4, 0, i3);
        Object[] objArr2 = new Object[i3];
        System.arraycopy(objArr, 0, objArr2, 0, i3);
        MatrixCursor matrixCursor = new MatrixCursor(strArr4, 1);
        matrixCursor.addRow(objArr2);
        return matrixCursor;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:2:0x0012, code lost:
        r0 = android.webkit.MimeTypeMap.getSingleton().getMimeTypeFromExtension(r0.getName().substring(r1 + 1));
     */
    public String getType(Uri uri) {
        String mimeTypeFromExtension;
        File Code2 = this.J.Code(uri);
        int lastIndexOf = Code2.getName().lastIndexOf(46);
        return (lastIndexOf < 0 || mimeTypeFromExtension == null) ? "application/octet-stream" : mimeTypeFromExtension;
    }

    public Uri insert(Uri uri, ContentValues contentValues) {
        throw new UnsupportedOperationException("No external inserts");
    }

    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException("No external updates");
    }

    public int delete(Uri uri, String str, String[] strArr) {
        return this.J.Code(uri).delete() ? 1 : 0;
    }

    public ParcelFileDescriptor openFile(Uri uri, String str) {
        int i;
        File Code2 = this.J.Code(uri);
        if ("r".equals(str)) {
            i = 268435456;
        } else if ("w".equals(str) || "wt".equals(str)) {
            i = 738197504;
        } else if ("wa".equals(str)) {
            i = 704643072;
        } else if ("rw".equals(str)) {
            i = 939524096;
        } else if ("rwt".equals(str)) {
            i = 1006632960;
        } else {
            throw new IllegalArgumentException("Invalid mode: " + str);
        }
        return ParcelFileDescriptor.open(Code2, i);
    }

    private static Code Code(Context context, String str) {
        Code code;
        File file;
        synchronized (Z) {
            code = (Code) Z.get(str);
            if (code == null) {
                try {
                    code = new Code();
                    XmlResourceParser loadXmlMetaData = context.getPackageManager().resolveContentProvider(str, 128).loadXmlMetaData(context.getPackageManager(), "android.support.FILE_PROVIDER_PATHS");
                    if (loadXmlMetaData == null) {
                        throw new IllegalArgumentException("Missing android.support.FILE_PROVIDER_PATHS meta-data");
                    }
                    while (true) {
                        int next = loadXmlMetaData.next();
                        if (next == 1) {
                            break;
                        } else if (next == 2) {
                            String name = loadXmlMetaData.getName();
                            String attributeValue = loadXmlMetaData.getAttributeValue((String) null, "name");
                            String attributeValue2 = loadXmlMetaData.getAttributeValue((String) null, "path");
                            if ("root-path".equals(name)) {
                                file = Code(I, attributeValue2);
                            } else if ("files-path".equals(name)) {
                                file = Code(context.getFilesDir(), attributeValue2);
                            } else if ("cache-path".equals(name)) {
                                file = Code(context.getCacheDir(), attributeValue2);
                            } else if ("external-path".equals(name)) {
                                file = Code(Environment.getExternalStorageDirectory(), attributeValue2);
                            } else {
                                file = null;
                            }
                            if (file != null) {
                                code.Code(attributeValue, file);
                            }
                        }
                    }
                    Z.put(str, code);
                } catch (IOException e) {
                    throw new IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", e);
                } catch (XmlPullParserException e2) {
                    throw new IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", e2);
                }
            }
        }
        return code;
    }

    private static File Code(File file, String... strArr) {
        File file2;
        int length = strArr.length;
        int i = 0;
        File file3 = file;
        while (i < length) {
            String str = strArr[i];
            if (str != null) {
                file2 = new File(file3, str);
            } else {
                file2 = file3;
            }
            i++;
            file3 = file2;
        }
        return file3;
    }
}
