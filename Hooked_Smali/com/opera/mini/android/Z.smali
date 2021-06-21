.class public final Lcom/opera/mini/android/Z;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Lbm;


# instance fields
.field private Code:Ljava/io/File;

.field private I:Ljava/io/OutputStream;

.field private synthetic J:Lcom/opera/mini/android/I;

.field private Z:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lcom/opera/mini/android/I;Ljava/io/File;)V
    .registers 3

    .prologue
    .line 27
    iput-object p1, p0, Lcom/opera/mini/android/Z;->J:Lcom/opera/mini/android/I;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p2, p0, Lcom/opera/mini/android/Z;->Code:Ljava/io/File;

    .line 29
    return-void
.end method


# virtual methods
.method public final B()Z
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/opera/mini/android/Z;->Code:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    return v0
.end method

.method public final C()V
    .registers 4

    .prologue
    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/opera/mini/android/Z;->I:Ljava/io/OutputStream;

    if-eqz v0, :cond_11

    .line 91
    iget-object v0, p0, Lcom/opera/mini/android/Z;->I:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 92
    iget-object v0, p0, Lcom/opera/mini/android/Z;->I:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/opera/mini/android/Z;->I:Ljava/io/OutputStream;

    .line 95
    :cond_11
    iget-object v0, p0, Lcom/opera/mini/android/Z;->Z:Ljava/io/InputStream;

    if-eqz v0, :cond_1d

    .line 97
    iget-object v0, p0, Lcom/opera/mini/android/Z;->Z:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/opera/mini/android/Z;->Z:Ljava/io/InputStream;

    .line 100
    :cond_1d
    iget-object v0, p0, Lcom/opera/mini/android/Z;->Code:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/opera/mini/android/Z;->Code:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_4d

    iget-object v0, p0, Lcom/opera/mini/android/Z;->Code:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbk;->c(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4d

    sget-object v0, Lcom/opera/mini/android/I;->Code:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 103
    sget-object v0, Lcom/opera/mini/android/I;->Code:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/opera/mini/android/Z;->Code:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_4d} :catch_4e

    .line 108
    :cond_4d
    :goto_4d
    return-void

    :catch_4e
    move-exception v0

    goto :goto_4d
.end method

.method public final Code()Ljava/io/InputStream;
    .registers 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/opera/mini/android/Z;->Z:Ljava/io/InputStream;

    if-nez v0, :cond_d

    .line 49
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/opera/mini/android/Z;->Code:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/opera/mini/android/Z;->Z:Ljava/io/InputStream;

    .line 51
    :cond_d
    iget-object v0, p0, Lcom/opera/mini/android/Z;->Z:Ljava/io/InputStream;

    return-object v0
.end method

.method public final Code(J)Ljava/io/OutputStream;
    .registers 6

    .prologue
    .line 33
    iget-object v0, p0, Lcom/opera/mini/android/Z;->I:Ljava/io/OutputStream;

    if-nez v0, :cond_21

    .line 35
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/opera/mini/android/Z;->Code:Ljava/io/File;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 36
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-eqz v1, :cond_1b

    .line 38
    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 40
    :cond_1b
    invoke-static {v0}, Ljava/nio/channels/Channels;->newOutputStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/opera/mini/android/Z;->I:Ljava/io/OutputStream;

    .line 42
    :cond_21
    iget-object v0, p0, Lcom/opera/mini/android/Z;->I:Ljava/io/OutputStream;

    return-object v0
.end method

.method public final Code(Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 7

    .prologue
    .line 112
    .line 113
    if-eqz p1, :cond_45

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_45

    .line 116
    new-instance v0, Lcom/opera/mini/android/J;

    iget-object v1, p0, Lcom/opera/mini/android/Z;->J:Lcom/opera/mini/android/I;

    invoke-direct {v0, p1}, Lcom/opera/mini/android/J;-><init>(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/opera/mini/android/Z;->Code:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 124
    :goto_15
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 125
    const/4 v1, 0x0

    :goto_1b
    array-length v2, v0

    if-ge v1, v2, :cond_4f

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_4c

    const-string v2, "/"

    :goto_37
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 121
    :cond_45
    iget-object v0, p0, Lcom/opera/mini/android/Z;->Code:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    goto :goto_15

    .line 127
    :cond_4c
    const-string v2, ""

    goto :goto_37

    .line 129
    :cond_4f
    invoke-virtual {v3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public final I()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/opera/mini/android/Z;->Code:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final J()Z
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/opera/mini/android/Z;->Code:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public final Z()J
    .registers 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/opera/mini/android/Z;->Code:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method
