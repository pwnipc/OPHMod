.class final Lcom/opera/mini/android/ao;
.super Ljava/lang/Object;
.source "Source"


# direct methods
.method public static Code()Ljava/util/Date;
    .registers 4

    .prologue
    .line 199
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Lcom/opera/mini/android/an;->Z()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Lcom/opera/mini/android/an;->Z()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-wide v1, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 206
    :goto_1c
    return-object v0

    :catch_1d
    move-exception v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    goto :goto_1c
.end method
