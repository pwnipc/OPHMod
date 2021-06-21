package com.opera.mini.android;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.nio.channels.Channels;
import java.nio.channels.FileChannel;
import java.util.Enumeration;
import java.util.Vector;

/* compiled from: Source */
public final class Z implements bm {
    private File Code;
    private OutputStream I;
    private /* synthetic */ I J;
    private InputStream Z;

    public Z(I i, File file) {
        this.J = i;
        this.Code = file;
    }

    public final OutputStream Code(long j) {
        if (this.I == null) {
            FileChannel channel = new RandomAccessFile(this.Code, "rw").getChannel();
            if (j != 0) {
                channel = channel.position(j);
            }
            this.I = Channels.newOutputStream(channel);
        }
        return this.I;
    }

    public final InputStream Code() {
        if (this.Z == null) {
            this.Z = new FileInputStream(this.Code);
        }
        return this.Z;
    }

    public final String I() {
        return this.Code.getAbsolutePath();
    }

    public final long Z() {
        return this.Code.length();
    }

    public final boolean J() {
        return this.Code.exists();
    }

    public final boolean B() {
        return this.Code.canWrite();
    }

    public final void C() {
        try {
            if (this.I != null) {
                this.I.flush();
                this.I.close();
                this.I = null;
            }
            if (this.Z != null) {
                this.Z.close();
                this.Z = null;
            }
            if (this.Code.exists() && !this.Code.isDirectory() && bk.c(this.Code.getName()) == 0 && I.Code.isConnected()) {
                I.Code.scanFile(this.Code.getAbsolutePath(), (String) null);
            }
        } catch (Throwable th) {
        }
    }

    public final Enumeration Code(String str) {
        File[] listFiles;
        if (str == null || str.length() <= 0) {
            listFiles = this.Code.listFiles();
        } else {
            I i = this.J;
            listFiles = this.Code.listFiles(new J(str));
        }
        Vector vector = new Vector();
        for (int i2 = 0; i2 < listFiles.length; i2++) {
            vector.addElement(listFiles[i2].getName() + (listFiles[i2].isDirectory() ? "/" : ""));
        }
        return vector.elements();
    }
}
