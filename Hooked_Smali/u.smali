.class final Lu;
.super Ljava/lang/Object;
.source "Source"


# direct methods
.method static Code([Lt;)[Landroid/os/Bundle;
    .registers 7

    .prologue
    .line 69
    if-nez p0, :cond_4

    .line 70
    const/4 v0, 0x0

    .line 76
    :goto_3
    return-object v0

    .line 72
    :cond_4
    array-length v0, p0

    new-array v1, v0, [Landroid/os/Bundle;

    .line 73
    const/4 v0, 0x0

    :goto_8
    array-length v2, p0

    if-ge v0, v2, :cond_44

    .line 74
    aget-object v2, p0, v0

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "resultKey"

    invoke-virtual {v2}, Lt;->Code()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "label"

    invoke-virtual {v2}, Lt;->I()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v4, "choices"

    invoke-virtual {v2}, Lt;->Z()[Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    const-string v4, "allowFreeFormInput"

    invoke-virtual {v2}, Lt;->J()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "extras"

    invoke-virtual {v2}, Lt;->B()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    aput-object v3, v1, v0

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_44
    move-object v0, v1

    .line 76
    goto :goto_3
.end method
