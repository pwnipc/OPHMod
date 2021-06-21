package defpackage;

import java.io.IOException;
import java.util.Enumeration;
import java.util.Vector;

/* renamed from: bl  reason: default package */
/* compiled from: Source */
public final class bl {
    private Vector B;
    private bm C;
    private bk Code;
    private String I;
    private Enumeration J;
    private String Z;
    private int a = 0;

    public bl(bk bkVar, String str, String str2) {
        String Code2 = bk.Code(str);
        this.Code = bkVar;
        this.I = Code2;
        this.Z = str2;
        J();
    }

    private void J() {
        int i;
        Vector vector;
        this.a = 0;
        this.I = db.Z(this.I);
        if (this.I.equals("file:///") || this.I.equals("file://localhost/")) {
            this.B = new Vector();
            bo[] B2 = this.Code.B();
            for (int i2 = 0; i2 < B2.length; i2++) {
                if (B2[i2] != null) {
                    Code(this.B, new Object[]{B2[i2].I(), new Integer(7), B2[i2].Code(), null});
                }
            }
            return;
        }
        try {
            this.C = ar.c.Code(this.I, false, 1);
            this.J = this.C.Code(this.Z);
        } catch (IOException e) {
        } finally {
            db.Code(this.C);
        }
        if (this.J != null) {
            this.B = new Vector();
            Vector vector2 = new Vector();
            while (this.J.hasMoreElements()) {
                String str = (String) this.J.nextElement();
                if (str.endsWith("/")) {
                    i = 4;
                } else {
                    i = 0;
                }
                int i3 = i | 3;
                if ((i3 & 4) == 0) {
                    vector = this.B;
                } else {
                    vector = vector2;
                }
                Code(vector, new Object[]{this.I + str, new Integer(i3), str, null});
            }
            for (int i4 = 0; i4 < this.B.size(); i4++) {
                vector2.addElement(this.B.elementAt(i4));
            }
            this.B = vector2;
        }
    }

    public final boolean Code() {
        return this.B != null && this.a < this.B.size();
    }

    public final Object[] I() {
        if (!Code()) {
            return null;
        }
        Vector vector = this.B;
        int i = this.a;
        this.a = i + 1;
        return (Object[]) vector.elementAt(i);
    }

    private static void Code(Vector vector, Object obj) {
        String lowerCase = ((String) ((Object[]) obj)[2]).toLowerCase();
        int size = vector.size() - 1;
        if (size < 0 || lowerCase.compareTo(((String) ((Object[]) vector.lastElement())[2]).toLowerCase()) >= 0) {
            vector.addElement(obj);
            return;
        }
        while (size > 0 && lowerCase.compareTo(((String) ((Object[]) vector.elementAt(size - 1))[2]).toLowerCase()) < 0) {
            size--;
        }
        vector.insertElementAt(obj, size);
    }

    public final void Z() {
        this.B = null;
    }
}
