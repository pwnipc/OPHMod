.class public final Lbt;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private Code:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lbt;->Code:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 21
    :try_start_0
    sget-object v0, Lar;->Code:Lci;

    iget-object v1, p0, Lbt;->Code:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "GET"

    invoke-interface {v0, v1, v2, v3}, Lci;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbc;

    move-result-object v0

    .line 28
    sget-boolean v1, Lcs;->b:Z

    if-eqz v1, :cond_16

    .line 30
    const-string v1, "Test-Header"

    const-string v2, "debug"

    invoke-interface {v0, v1, v2}, Lbc;->Code(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_16
    invoke-interface {v0}, Lbc;->Z()Ljava/io/DataInputStream;

    move-result-object v1

    .line 37
    invoke-static {v1}, Ldb;->Code(Ljava/io/InputStream;)V

    .line 40
    invoke-interface {v0}, Lbc;->J()I

    move-result v1

    .line 43
    const/16 v2, 0x12d

    if-lt v1, v2, :cond_29

    const/16 v2, 0x12f

    if-le v1, v2, :cond_2d

    :cond_29
    const/16 v2, 0x133

    if-ne v1, v2, :cond_38

    .line 46
    :cond_2d
    const-string v1, "Location"

    invoke-interface {v0, v1}, Lbc;->Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lbt;->Code:Ljava/lang/String;

    .line 48
    invoke-virtual {p0}, Lbt;->run()V

    .line 51
    :cond_38
    invoke-interface {v0}, Lbc;->Code()V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3b} :catch_3c

    .line 58
    :goto_3b
    return-void

    :catch_3c
    move-exception v0

    goto :goto_3b
.end method
