.class public final Lay;
.super Ljava/lang/Object;
.source "Source"


# static fields
.field private static Code:Ljava/lang/String;

.field private static I:Ljava/lang/String;


# direct methods
.method public static Code()Ljava/lang/String;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lay;->Code:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 25
    const-string v0, "locale"

    invoke-static {v0}, Lar;->Z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lay;->Code:Ljava/lang/String;

    .line 27
    :cond_c
    sget-object v0, Lay;->Code:Ljava/lang/String;

    return-object v0
.end method

.method public static Code(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 16
    sput-object p0, Lay;->Code:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public static I()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v2, 0x2

    .line 39
    sget-object v0, Lay;->I:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 41
    sget-object v0, Lay;->I:Ljava/lang/String;

    .line 49
    :goto_7
    return-object v0

    .line 43
    :cond_8
    sget-object v0, Lay;->Code:Ljava/lang/String;

    if-eqz v0, :cond_1c

    sget-object v0, Lay;->Code:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_1c

    .line 45
    sget-object v0, Lay;->Code:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 49
    :cond_1c
    const-string v0, ""

    goto :goto_7
.end method

.method public static I(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 34
    sput-object p0, Lay;->I:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public static Z()Ljava/lang/String;
    .registers 3

    .prologue
    .line 55
    sget-object v0, Lay;->Code:Ljava/lang/String;

    if-eqz v0, :cond_1f

    sget-object v0, Lay;->Code:Ljava/lang/String;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1f

    .line 57
    sget-object v0, Lay;->Code:Ljava/lang/String;

    sget-object v1, Lay;->Code:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 59
    :goto_1e
    return-object v0

    :cond_1f
    const-string v0, ""

    goto :goto_1e
.end method
