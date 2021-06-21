.class public final Lbo;
.super Ljava/lang/Object;
.source "Source"


# instance fields
.field private Code:Ljava/lang/String;

.field private I:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lbo;->Code:Ljava/lang/String;

    .line 17
    invoke-static {p2}, Lbo;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbo;->I:Ljava/lang/String;

    .line 18
    return-void
.end method

.method private static I(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 62
    const-string v0, "file://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 64
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 68
    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 70
    :cond_2e
    return-object p0
.end method


# virtual methods
.method public final Code()Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lbo;->Code:Ljava/lang/String;

    return-object v0
.end method

.method public final Code(Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 48
    iget-object v0, p0, Lbo;->I:Ljava/lang/String;

    if-eqz v0, :cond_6

    if-nez p1, :cond_10

    .line 49
    :cond_6
    iget-object v0, p0, Lbo;->I:Ljava/lang/String;

    if-nez v0, :cond_e

    if-nez p1, :cond_e

    const/4 v0, 0x1

    .line 50
    :goto_d
    return v0

    .line 49
    :cond_e
    const/4 v0, 0x0

    goto :goto_d

    .line 50
    :cond_10
    iget-object v0, p0, Lbo;->I:Ljava/lang/String;

    invoke-static {p1}, Lbo;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_d
.end method

.method public final I()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lbo;->I:Ljava/lang/String;

    return-object v0
.end method

.method public final J()Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 123
    const/4 v1, 0x0

    .line 127
    :try_start_2
    sget-object v2, Lar;->c:Lbk;

    iget-object v3, p0, Lbo;->I:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v4, v5}, Lbk;->Code(Ljava/lang/String;ZI)Lbm;

    move-result-object v1

    .line 128
    invoke-interface {v1}, Lbm;->B()Z
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_f} :catch_14
    .catchall {:try_start_2 .. :try_end_f} :catchall_19

    move-result v0

    .line 135
    invoke-static {v1}, Ldb;->Code(Lbm;)V

    .line 137
    :goto_13
    return v0

    .line 131
    :catch_14
    move-exception v2

    .line 135
    invoke-static {v1}, Ldb;->Code(Lbm;)V

    goto :goto_13

    :catchall_19
    move-exception v0

    invoke-static {v1}, Ldb;->Code(Lbm;)V

    throw v0
.end method

.method public final Z()Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 85
    const/4 v1, 0x0

    .line 89
    :try_start_2
    sget-object v2, Lar;->c:Lbk;

    iget-object v3, p0, Lbo;->I:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lbk;->Code(Ljava/lang/String;ZI)Lbm;

    move-result-object v1

    .line 90
    invoke-interface {v1}, Lbm;->J()Z
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_f} :catch_14
    .catchall {:try_start_2 .. :try_end_f} :catchall_19

    move-result v0

    .line 97
    invoke-static {v1}, Ldb;->Code(Lbm;)V

    .line 99
    :goto_13
    return v0

    .line 93
    :catch_14
    move-exception v2

    .line 97
    invoke-static {v1}, Ldb;->Code(Lbm;)V

    goto :goto_13

    :catchall_19
    move-exception v0

    invoke-static {v1}, Ldb;->Code(Lbm;)V

    throw v0
.end method
