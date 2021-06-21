.class final Laz;
.super Ljava/io/OutputStream;
.source "Source"


# instance fields
.field private Code:Lbf;

.field private I:Ljava/io/DataOutputStream;

.field private J:I

.field private Z:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 21
    return-void
.end method

.method public static Code(ILjava/lang/String;)Laz;
    .registers 5

    .prologue
    .line 25
    new-instance v0, Laz;

    invoke-direct {v0}, Laz;-><init>()V

    .line 26
    new-instance v1, Lbf;

    invoke-direct {v1}, Lbf;-><init>()V

    iput-object v1, v0, Laz;->Code:Lbf;

    .line 27
    new-instance v1, Ljava/io/DataOutputStream;

    iget-object v2, v0, Laz;->Code:Lbf;

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, v0, Laz;->I:Ljava/io/DataOutputStream;

    .line 28
    iput-object p1, v0, Laz;->Z:Ljava/lang/String;

    .line 29
    iput p0, v0, Laz;->J:I

    .line 30
    return-object v0
.end method

.method public static Code(Ljava/io/OutputStream;)Laz;
    .registers 3

    .prologue
    .line 35
    new-instance v0, Laz;

    invoke-direct {v0}, Laz;-><init>()V

    .line 36
    new-instance v1, Lbf;

    invoke-direct {v1}, Lbf;-><init>()V

    iput-object v1, v0, Laz;->Code:Lbf;

    .line 37
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, v0, Laz;->I:Ljava/io/DataOutputStream;

    .line 38
    return-object v0
.end method


# virtual methods
.method final Code(I)V
    .registers 3

    .prologue
    .line 58
    iget-object v0, p0, Laz;->I:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 59
    return-void
.end method

.method final Code(J)V
    .registers 4

    .prologue
    .line 73
    iget-object v0, p0, Laz;->I:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 74
    return-void
.end method

.method final I(I)V
    .registers 3

    .prologue
    .line 63
    iget-object v0, p0, Laz;->I:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 64
    return-void
.end method

.method final Z(I)V
    .registers 3

    .prologue
    .line 68
    iget-object v0, p0, Laz;->I:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 69
    return-void
.end method

.method public final close()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 88
    :try_start_2
    iget v0, p0, Laz;->J:I

    invoke-static {v0}, Lar;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 89
    iget v1, p0, Laz;->J:I

    iget-object v2, p0, Laz;->Z:Ljava/lang/String;

    invoke-static {v1, v2}, Lar;->Code(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Laz;->Z:Ljava/lang/String;

    .line 90
    sget-object v1, Lcn;->Code:Lcn;

    iget-object v2, p0, Laz;->Z:Ljava/lang/String;

    iget-object v3, p0, Laz;->Code:Lbf;

    invoke-virtual {v3}, Lbf;->Code()[B

    move-result-object v3

    iget-object v4, p0, Laz;->Code:Lbf;

    invoke-virtual {v4}, Lbf;->size()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lcn;->Code(Ljava/lang/String;Ljava/lang/String;[BI)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_25} :catch_33
    .catchall {:try_start_2 .. :try_end_25} :catchall_42

    .line 98
    iget-object v0, p0, Laz;->I:Ljava/io/DataOutputStream;

    invoke-static {v0}, Ldb;->Code(Ljava/io/OutputStream;)V

    .line 99
    iput-object v5, p0, Laz;->I:Ljava/io/DataOutputStream;

    .line 100
    iput-object v5, p0, Laz;->Code:Lbf;

    .line 101
    iput-object v5, p0, Laz;->Z:Ljava/lang/String;

    .line 102
    iput v6, p0, Laz;->J:I

    .line 103
    :goto_32
    return-void

    .line 98
    :catch_33
    move-exception v0

    iget-object v0, p0, Laz;->I:Ljava/io/DataOutputStream;

    invoke-static {v0}, Ldb;->Code(Ljava/io/OutputStream;)V

    .line 99
    iput-object v5, p0, Laz;->I:Ljava/io/DataOutputStream;

    .line 100
    iput-object v5, p0, Laz;->Code:Lbf;

    .line 101
    iput-object v5, p0, Laz;->Z:Ljava/lang/String;

    .line 102
    iput v6, p0, Laz;->J:I

    goto :goto_32

    .line 98
    :catchall_42
    move-exception v0

    iget-object v1, p0, Laz;->I:Ljava/io/DataOutputStream;

    invoke-static {v1}, Ldb;->Code(Ljava/io/OutputStream;)V

    .line 99
    iput-object v5, p0, Laz;->I:Ljava/io/DataOutputStream;

    .line 100
    iput-object v5, p0, Laz;->Code:Lbf;

    .line 101
    iput-object v5, p0, Laz;->Z:Ljava/lang/String;

    .line 102
    iput v6, p0, Laz;->J:I

    throw v0
.end method

.method public final flush()V
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Laz;->I:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 79
    return-void
.end method

.method public final write(I)V
    .registers 3

    .prologue
    .line 43
    iget-object v0, p0, Laz;->I:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write(I)V

    .line 44
    return-void
.end method

.method public final write([B)V
    .registers 3

    .prologue
    .line 53
    iget-object v0, p0, Laz;->I:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 54
    return-void
.end method

.method public final write([BII)V
    .registers 5

    .prologue
    .line 48
    iget-object v0, p0, Laz;->I:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataOutputStream;->write([BII)V

    .line 49
    return-void
.end method
