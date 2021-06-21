.class public Lcom/opera/mini/android/Browser;
.super Lcom/opera/mini/android/TrackedActivity;
.source "Source"


# static fields
.field static Code:Lcom/opera/mini/android/Code;

.field public static I:Lcom/opera/mini/android/Browser;

.field private static h:Z


# instance fields
.field private B:Landroid/content/Intent;

.field private C:I

.field private J:Landroid/content/res/Configuration;

.field protected Z:Z

.field private a:I

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 687
    const/4 v0, 0x0

    sput-boolean v0, Lcom/opera/mini/android/Browser;->h:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Lcom/opera/mini/android/TrackedActivity;-><init>()V

    .line 65
    iput v1, p0, Lcom/opera/mini/android/Browser;->C:I

    .line 66
    iput v1, p0, Lcom/opera/mini/android/Browser;->a:I

    .line 74
    iput-boolean v0, p0, Lcom/opera/mini/android/Browser;->Z:Z

    .line 85
    iput-boolean v0, p0, Lcom/opera/mini/android/Browser;->e:Z

    .line 327
    iput-boolean v0, p0, Lcom/opera/mini/android/Browser;->g:Z

    return-void
.end method

.method private Code(Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 588
    new-instance v0, Lcom/opera/mini/android/Browser$3;

    invoke-direct {v0, p0, p1}, Lcom/opera/mini/android/Browser$3;-><init>(Lcom/opera/mini/android/Browser;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/opera/mini/android/Browser$3;->start()V

    .line 609
    return-void
.end method

.method private Code(Landroid/content/res/Configuration;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 509
    .line 510
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    packed-switch v2, :pswitch_data_1a

    .line 529
    :goto_7
    return v0

    .line 514
    :pswitch_8
    iget-boolean v2, p0, Lcom/opera/mini/android/Browser;->c:Z

    if-nez v2, :cond_d

    move v0, v1

    .line 518
    :cond_d
    iput-boolean v1, p0, Lcom/opera/mini/android/Browser;->c:Z

    goto :goto_7

    .line 523
    :pswitch_10
    iget-boolean v2, p0, Lcom/opera/mini/android/Browser;->c:Z

    if-eqz v2, :cond_18

    .line 527
    :goto_14
    iput-boolean v0, p0, Lcom/opera/mini/android/Browser;->c:Z

    move v0, v1

    goto :goto_7

    :cond_18
    move v1, v0

    goto :goto_14

    .line 510
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_10
        :pswitch_8
    .end packed-switch
.end method

.method private I(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 613
    if-nez p1, :cond_3

    .line 624
    :goto_2
    return-void

    .line 614
    :cond_3
    new-instance v0, Lcom/opera/mini/android/Browser$4;

    invoke-direct {v0, p1}, Lcom/opera/mini/android/Browser$4;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/opera/mini/android/Browser;->Code(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method private I(Landroid/content/res/Configuration;)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 540
    .line 541
    iget v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    packed-switch v2, :pswitch_data_1a

    .line 559
    :goto_7
    return v1

    .line 545
    :pswitch_8
    iget-boolean v2, p0, Lcom/opera/mini/android/Browser;->d:Z

    if-eqz v2, :cond_18

    .line 549
    :goto_c
    iput-boolean v1, p0, Lcom/opera/mini/android/Browser;->d:Z

    move v1, v0

    .line 550
    goto :goto_7

    .line 554
    :pswitch_10
    iget-boolean v2, p0, Lcom/opera/mini/android/Browser;->d:Z

    if-nez v2, :cond_15

    move v1, v0

    .line 558
    :cond_15
    iput-boolean v0, p0, Lcom/opera/mini/android/Browser;->d:Z

    goto :goto_7

    :cond_18
    move v0, v1

    goto :goto_c

    .line 541
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_10
        :pswitch_8
    .end packed-switch
.end method

.method private native d()V
.end method

.method private e()V
    .registers 4

    .prologue
    .line 194
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 195
    const v1, 0x7f040002

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 196
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 197
    const v1, 0x104000a

    new-instance v2, Lcom/opera/mini/android/Browser$1;

    invoke-direct {v2}, Lcom/opera/mini/android/Browser$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 206
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 208
    return-void
.end method


# virtual methods
.method public final B()Z
    .registers 2

    .prologue
    .line 504
    iget-boolean v0, p0, Lcom/opera/mini/android/Browser;->c:Z

    return v0
.end method

.method public final C()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 570
    iget-object v1, p0, Lcom/opera/mini/android/Browser;->J:Landroid/content/res/Configuration;

    if-eqz v1, :cond_14

    .line 572
    iget-object v1, p0, Lcom/opera/mini/android/Browser;->J:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_13

    iget-object v1, p0, Lcom/opera/mini/android/Browser;->J:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    :cond_13
    const/4 v0, 0x1

    .line 577
    :cond_14
    return v0
.end method

.method public native Code()V
.end method

.method public final Code(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 628
    if-nez p1, :cond_3

    .line 641
    :goto_2
    return-void

    .line 629
    :cond_3
    new-instance v0, Lcom/opera/mini/android/Browser$5;

    invoke-direct {v0, p1}, Lcom/opera/mini/android/Browser$5;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/opera/mini/android/Browser;->Code(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method protected final Code(Z)V
    .registers 5

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/opera/mini/android/Browser;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 288
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 290
    invoke-static {}, Lcom/opera/mini/android/o;->as()Z

    move-result v2

    and-int/2addr v2, p1

    .line 292
    if-eqz v2, :cond_23

    .line 294
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 300
    :goto_17
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v1, v2, :cond_22

    .line 302
    invoke-virtual {p0}, Lcom/opera/mini/android/Browser;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 305
    :cond_22
    return-void

    .line 298
    :cond_23
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, -0x401

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_17
.end method

.method public final I()V
    .registers 4

    .prologue
    .line 223
    iget v0, p0, Lcom/opera/mini/android/Browser;->a:I

    iget v1, p0, Lcom/opera/mini/android/Browser;->C:I

    if-eq v0, v1, :cond_19

    .line 225
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/opera/mini/android/Browser;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 226
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 227
    const-string v1, "previousVersion"

    iget v2, p0, Lcom/opera/mini/android/Browser;->a:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 228
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 230
    :cond_19
    return-void
.end method

.method final J()Z
    .registers 2

    .prologue
    .line 363
    iget-boolean v0, p0, Lcom/opera/mini/android/Browser;->e:Z

    return v0
.end method

.method public final Z()Z
    .registers 3

    .prologue
    .line 331
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/opera/mini/android/Browser;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 332
    iget-boolean v1, p0, Lcom/opera/mini/android/Browser;->g:Z

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v0

    if-nez v0, :cond_14

    .line 335
    const/4 v0, 0x0

    .line 337
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x1

    goto :goto_13
.end method

.method public final a()Z
    .registers 2

    .prologue
    .line 583
    iget-boolean v0, p0, Lcom/opera/mini/android/Browser;->d:Z

    return v0
.end method

.method public final b()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 752
    invoke-virtual {p0, v1}, Lcom/opera/mini/android/Browser;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 753
    const-string v3, "isFirstRun"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_14

    iget v2, p0, Lcom/opera/mini/android/Browser;->C:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_14

    :goto_13
    return v0

    :cond_14
    move v0, v1

    goto :goto_13
.end method

.method public final c()Z
    .registers 3

    .prologue
    .line 758
    iget v0, p0, Lcom/opera/mini/android/Browser;->a:I

    iget v1, p0, Lcom/opera/mini/android/Browser;->C:I

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .prologue
    .line 495
    invoke-static {}, Lcom/opera/mini/android/br;->Code()I

    move-result v0

    if-ne p1, v0, :cond_c

    const/4 v0, -0x1

    if-ne p2, v0, :cond_c

    .line 497
    invoke-static {p3}, Lcom/opera/mini/android/br;->Code(Landroid/content/Intent;)V

    .line 499
    :cond_c
    invoke-super {p0, p1, p2, p3}, Lcom/opera/mini/android/TrackedActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 500
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 461
    invoke-super {p0, p1}, Lcom/opera/mini/android/TrackedActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 462
    iget-boolean v0, p0, Lcom/opera/mini/android/Browser;->f:Z

    if-eqz v0, :cond_a

    .line 491
    :cond_9
    :goto_9
    return-void

    .line 466
    :cond_a
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/opera/mini/android/Browser;->J:Landroid/content/res/Configuration;

    .line 468
    iget-object v0, p0, Lcom/opera/mini/android/Browser;->J:Landroid/content/res/Configuration;

    invoke-direct {p0, v0}, Lcom/opera/mini/android/Browser;->I(Landroid/content/res/Configuration;)Z

    move-result v0

    .line 469
    if-eqz v0, :cond_35

    sget-object v0, Lcom/opera/mini/android/Browser;->Code:Lcom/opera/mini/android/Code;

    iget-boolean v0, v0, Lcom/opera/mini/android/Code;->C:Z

    if-eqz v0, :cond_35

    .line 472
    sget-object v0, Lar;->I:Lar;

    invoke-virtual {v0}, Lar;->h()V

    .line 473
    sget-object v3, Lar;->Z:Lan;

    iget-boolean v0, p0, Lcom/opera/mini/android/Browser;->d:Z

    if-eqz v0, :cond_6e

    move v0, v1

    :goto_2b
    invoke-virtual {v3, v0}, Lan;->c(I)V

    .line 474
    sget-object v0, Lar;->I:Lar;

    const/16 v3, 0x36

    invoke-virtual {v0, v3}, Lar;->Z(I)V

    .line 476
    :cond_35
    iget-object v0, p0, Lcom/opera/mini/android/Browser;->J:Landroid/content/res/Configuration;

    invoke-direct {p0, v0}, Lcom/opera/mini/android/Browser;->Code(Landroid/content/res/Configuration;)Z

    move-result v0

    .line 477
    if-eqz v0, :cond_59

    sget-object v0, Lcom/opera/mini/android/Browser;->Code:Lcom/opera/mini/android/Code;

    iget-boolean v0, v0, Lcom/opera/mini/android/Code;->C:Z

    if-eqz v0, :cond_59

    .line 480
    sget-object v0, Lar;->I:Lar;

    invoke-virtual {v0}, Lar;->h()V

    .line 481
    sget-object v0, Lar;->Z:Lan;

    iget-boolean v3, p0, Lcom/opera/mini/android/Browser;->c:Z

    if-eqz v3, :cond_4f

    move v2, v1

    :cond_4f
    invoke-virtual {v0, v2}, Lan;->c(I)V

    .line 482
    sget-object v0, Lar;->I:Lar;

    const/16 v2, 0x42

    invoke-virtual {v0, v2}, Lar;->Z(I)V

    .line 485
    :cond_59
    sget-object v0, Lcom/opera/mini/android/MiniView;->Code:Lcom/opera/mini/android/MiniView;

    invoke-virtual {v0}, Lcom/opera/mini/android/MiniView;->f()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/opera/mini/android/o;->Code:Lcom/opera/mini/android/EditView;

    if-eqz v0, :cond_9

    .line 488
    sget-object v0, Lcom/opera/mini/android/o;->Code:Lcom/opera/mini/android/EditView;

    invoke-virtual {v0}, Lcom/opera/mini/android/EditView;->requestFocus()Z

    .line 489
    invoke-static {v1}, Lcom/opera/mini/android/o;->B(Z)V

    goto :goto_9

    :cond_6e
    move v0, v2

    .line 473
    goto :goto_2b
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 12

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 112
    invoke-super {p0, p1}, Lcom/opera/mini/android/TrackedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    const-string v0, "http.keepAlive"

    const-string v3, "false"

    invoke-static {v0, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    sget-object v0, Lcom/opera/mini/android/Browser;->I:Lcom/opera/mini/android/Browser;

    if-eqz v0, :cond_14

    .line 119
    invoke-virtual {p0}, Lcom/opera/mini/android/Browser;->finish()V

    .line 190
    :goto_13
    return-void

    .line 124
    :cond_14
    sput-object p0, Lcom/opera/mini/android/Browser;->I:Lcom/opera/mini/android/Browser;

    .line 127
    :try_start_16
    invoke-virtual {p0}, Lcom/opera/mini/android/Browser;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/opera/mini/android/Browser;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, p0, Lcom/opera/mini/android/Browser;->a:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/opera/mini/android/Browser;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "previousVersion"

    const/4 v4, -0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/opera/mini/android/Browser;->C:I
    :try_end_35
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_35} :catch_1b6

    .line 129
    :goto_35
    invoke-virtual {p0}, Lcom/opera/mini/android/Browser;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/opera/mini/android/I;->a(Ljava/lang/String;)J

    move-result-wide v3

    .line 131
    invoke-virtual {p0}, Lcom/opera/mini/android/Browser;->b()Z

    move-result v0

    if-eqz v0, :cond_54

    const-wide/32 v5, 0xfa000

    cmp-long v0, v3, v5

    if-gez v0, :cond_54

    .line 133
    iput-boolean v1, p0, Lcom/opera/mini/android/Browser;->f:Z

    .line 134
    invoke-direct {p0}, Lcom/opera/mini/android/Browser;->e()V

    goto :goto_13

    .line 138
    :cond_54
    if-eqz p1, :cond_60

    const-string v0, "com.opera.mini.android.IGNORE_ALREADY_HANDLED_START_INTENT"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 141
    iput-boolean v1, p0, Lcom/opera/mini/android/Browser;->b:Z

    .line 145
    :cond_60
    invoke-static {p0}, Lcom/opera/mini/android/s;->Code(Lcom/opera/mini/android/Browser;)V

    .line 148
    invoke-virtual {p0}, Lcom/opera/mini/android/Browser;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "om"

    sget-boolean v3, Lcom/opera/mini/android/Browser;->h:Z

    if-nez v3, :cond_71

    sget-object v3, Lcom/opera/mini/android/Browser;->I:Lcom/opera/mini/android/Browser;

    if-nez v3, :cond_104

    .line 152
    :cond_71
    :goto_71
    invoke-direct {p0}, Lcom/opera/mini/android/Browser;->d()V

    .line 155
    invoke-static {p0}, Lcom/opera/mini/android/br;->Code(Landroid/app/Activity;)V

    .line 160
    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/opera/mini/android/Browser;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/opera/mini/android/Browser;->J:Landroid/content/res/Configuration;

    .line 161
    iget-object v0, p0, Lcom/opera/mini/android/Browser;->J:Landroid/content/res/Configuration;

    invoke-direct {p0, v0}, Lcom/opera/mini/android/Browser;->Code(Landroid/content/res/Configuration;)Z

    .line 162
    iget-object v0, p0, Lcom/opera/mini/android/Browser;->J:Landroid/content/res/Configuration;

    invoke-direct {p0, v0}, Lcom/opera/mini/android/Browser;->I(Landroid/content/res/Configuration;)Z

    .line 164
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/opera/mini/android/Browser;->setContentView(I)V

    .line 165
    invoke-virtual {p0, v1}, Lcom/opera/mini/android/Browser;->Code(Z)V

    .line 168
    new-instance v0, Lcom/opera/mini/android/Code;

    new-instance v3, Lcom/opera/mini/android/o;

    invoke-virtual {p0}, Lcom/opera/mini/android/Browser;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/opera/mini/android/o;-><init>(Lcom/opera/mini/android/Browser;Landroid/content/res/AssetManager;)V

    invoke-direct {v0, v3}, Lcom/opera/mini/android/Code;-><init>(Lci;)V

    sput-object v0, Lcom/opera/mini/android/Browser;->Code:Lcom/opera/mini/android/Code;

    .line 171
    sget-object v0, Lar;->Code:Lci;

    invoke-interface {v0}, Lci;->Q()V

    .line 176
    new-instance v0, Lcom/opera/mini/android/Browser$2;

    invoke-direct {v0}, Lcom/opera/mini/android/Browser$2;-><init>()V

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a4

    sget-object v0, Lcom/opera/mini/android/Browser;->Code:Lcom/opera/mini/android/Code;

    invoke-virtual {v0}, Lcom/opera/mini/android/Code;->k()Z

    move-result v0

    if-eqz v0, :cond_ce

    sget v0, Lcom/opera/mini/android/s;->al:I

    const/16 v3, 0xa

    if-le v0, v3, :cond_ce

    sget v0, Lcom/opera/mini/android/s;->al:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_1a4

    :cond_ce
    move v0, v1

    :goto_cf
    sput-boolean v0, Ldb;->A:Z

    .line 177
    sget-object v0, Lcom/opera/mini/android/Browser;->Code:Lcom/opera/mini/android/Code;

    invoke-virtual {v0}, Lcom/opera/mini/android/Code;->k()Z

    move-result v0

    if-eqz v0, :cond_1a7

    :cond_d9
    :goto_d9
    sput-boolean v1, Ldb;->I:Z

    sput-boolean v1, Ldb;->Code:Z

    .line 179
    sget v0, Lcom/opera/mini/android/s;->al:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_ec

    sget-object v0, Lcom/opera/mini/android/Browser;->I:Lcom/opera/mini/android/Browser;

    if-eqz v0, :cond_ec

    sget-object v0, Lcom/opera/mini/android/Browser;->I:Lcom/opera/mini/android/Browser;

    invoke-static {v0}, Lcom/opera/mini/android/aa;->Code(Landroid/app/Activity;)V

    .line 181
    :cond_ec
    invoke-virtual {p0}, Lcom/opera/mini/android/Browser;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/opera/mini/android/Browser;->B:Landroid/content/Intent;

    .line 184
    invoke-static {}, Lcom/opera/mini/android/s;->t()Z

    move-result v0

    if-eqz v0, :cond_ff

    .line 186
    invoke-virtual {p0}, Lcom/opera/mini/android/Browser;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/opera/mini/android/an;->Code(Landroid/content/Context;)V

    .line 189
    :cond_ff
    invoke-static {}, Lcom/opera/mini/android/al;->I()V

    goto/16 :goto_13

    .line 148
    :cond_104
    invoke-static {v0}, Lcom/opera/mini/android/s;->Z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/io/File;

    invoke-static {v5}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/opera/mini/android/Browser;->I:Lcom/opera/mini/android/Browser;

    invoke-virtual {v4}, Lcom/opera/mini/android/Browser;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_120
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_167

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_167

    sget-object v4, Lcom/opera/mini/android/Browser;->I:Lcom/opera/mini/android/Browser;

    const-string v6, "armeabi"

    sget-object v7, Lcom/opera/mini/android/Browser;->I:Lcom/opera/mini/android/Browser;

    invoke-static {v7}, Lcom/opera/mini/android/s;->I(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "lib/"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v7, v6, v3}, Lcom/opera/mini/android/s;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/opera/mini/android/t;

    move-result-object v6

    sget-object v7, Lcom/opera/mini/android/Browser$6;->Code:[I

    invoke-virtual {v6}, Lcom/opera/mini/android/t;->ordinal()I

    move-result v6

    aget v6, v7, v6

    packed-switch v6, :pswitch_data_1ba

    :goto_164
    move v4, v2

    :goto_165
    if-eqz v4, :cond_177

    :cond_167
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1a2

    :goto_16d
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/opera/mini/android/Browser;->h:Z
    :try_end_177
    .catch Ljava/lang/Throwable; {:try_start_120 .. :try_end_177} :catch_1a0

    :cond_177
    :goto_177
    sget-boolean v0, Lcom/opera/mini/android/Browser;->h:Z

    if-nez v0, :cond_17e

    invoke-static {v5}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    :cond_17e
    sput-boolean v1, Lcom/opera/mini/android/Browser;->h:Z

    goto/16 :goto_71

    :pswitch_182
    :try_start_182
    sget v4, Lcom/opera/mini/android/s;->al:I

    const/16 v6, 0x9

    if-lt v4, v6, :cond_197

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-static {v3, v4, v6}, Lcom/opera/mini/android/ae;->Code(Ljava/io/File;ZZ)Z

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-static {v3, v4, v6}, Lcom/opera/mini/android/ae;->I(Ljava/io/File;ZZ)Z

    const/4 v4, 0x1

    const/4 v6, 0x1

    invoke-static {v3, v4, v6}, Lcom/opera/mini/android/ae;->Z(Ljava/io/File;ZZ)Z

    :cond_197
    move v4, v1

    goto :goto_165

    :pswitch_199
    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/opera/mini/android/Browser;->f:Z

    invoke-direct {v4}, Lcom/opera/mini/android/Browser;->e()V
    :try_end_19f
    .catch Ljava/lang/Throwable; {:try_start_182 .. :try_end_19f} :catch_1a0

    goto :goto_164

    :catch_1a0
    move-exception v0

    goto :goto_177

    :cond_1a2
    move-object v0, v3

    goto :goto_16d

    :cond_1a4
    move v0, v2

    .line 176
    goto/16 :goto_cf

    .line 177
    :cond_1a7
    invoke-virtual {p0}, Lcom/opera/mini/android/Browser;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->touchscreen:I

    if-ne v0, v1, :cond_d9

    move v1, v2

    goto/16 :goto_d9

    .line 127
    :catch_1b6
    move-exception v0

    goto/16 :goto_35

    .line 148
    nop

    :pswitch_data_1ba
    .packed-switch 0x1
        :pswitch_182
        :pswitch_199
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 374
    invoke-super {p0}, Lcom/opera/mini/android/TrackedActivity;->onDestroy()V

    .line 377
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/opera/mini/android/Browser;->e:Z

    .line 381
    sget-object v0, Lar;->I:Lar;

    if-eqz v0, :cond_1e

    sget-object v0, Lar;->Code:Lci;

    invoke-interface {v0}, Lci;->p()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 383
    sget-object v0, Lar;->I:Lar;

    invoke-virtual {v0}, Lar;->h()V

    .line 384
    sget-object v0, Lar;->I:Lar;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Lar;->Z(I)V

    .line 388
    :cond_1e
    sget-object v0, Lcom/opera/mini/android/MiniView;->Code:Lcom/opera/mini/android/MiniView;

    invoke-virtual {v0}, Lcom/opera/mini/android/MiniView;->C()V

    .line 391
    sget-object v0, Lcn;->Code:Lcn;

    check-cast v0, Lcom/opera/mini/android/am;

    invoke-virtual {v0}, Lcom/opera/mini/android/am;->Code()V

    .line 394
    sget-object v0, Lar;->Code:Lci;

    invoke-interface {v0}, Lci;->R()V

    .line 405
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 406
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3

    .prologue
    .line 253
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/opera/mini/android/Browser;->b:Z

    .line 254
    iput-object p1, p0, Lcom/opera/mini/android/Browser;->B:Landroid/content/Intent;

    .line 256
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 310
    invoke-super {p0}, Lcom/opera/mini/android/TrackedActivity;->onPause()V

    .line 311
    iget-boolean v0, p0, Lcom/opera/mini/android/Browser;->f:Z

    if-eqz v0, :cond_8

    .line 325
    :goto_7
    return-void

    .line 318
    :cond_8
    sget-object v0, Lcom/opera/mini/android/MiniView;->Code:Lcom/opera/mini/android/MiniView;

    invoke-virtual {v0}, Lcom/opera/mini/android/MiniView;->Z()V

    .line 319
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/opera/mini/android/Browser;->g:Z

    .line 320
    invoke-virtual {p0}, Lcom/opera/mini/android/Browser;->Z()Z

    move-result v0

    if-nez v0, :cond_19

    .line 322
    invoke-static {}, Lcs;->I()V

    .line 324
    :cond_19
    new-instance v0, Lcom/opera/mini/android/events/ActivityPausedEvent;

    invoke-direct {v0, p0}, Lcom/opera/mini/android/events/ActivityPausedEvent;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/opera/mini/android/events/EventDispatcher;->Code(Ljava/lang/Object;)V

    goto :goto_7
.end method

.method protected onRestart()V
    .registers 3

    .prologue
    .line 447
    invoke-super {p0}, Lcom/opera/mini/android/TrackedActivity;->onRestart()V

    .line 448
    iget-boolean v0, p0, Lcom/opera/mini/android/Browser;->f:Z

    if-eqz v0, :cond_8

    .line 457
    :cond_7
    :goto_7
    return-void

    .line 452
    :cond_8
    sget-object v0, Lcom/opera/mini/android/Browser;->Code:Lcom/opera/mini/android/Code;

    iget-boolean v0, v0, Lcom/opera/mini/android/Code;->C:Z

    if-eqz v0, :cond_7

    .line 454
    sget-object v0, Lar;->I:Lar;

    invoke-virtual {v0}, Lar;->h()V

    .line 455
    sget-object v0, Lar;->I:Lar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lar;->Z(I)V

    goto :goto_7
.end method

.method protected onResume()V
    .registers 7

    .prologue
    const/16 v5, 0x9

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 342
    invoke-super {p0}, Lcom/opera/mini/android/TrackedActivity;->onResume()V

    .line 343
    iget-boolean v2, p0, Lcom/opera/mini/android/Browser;->f:Z

    if-eqz v2, :cond_c

    .line 359
    :goto_b
    return-void

    .line 350
    :cond_c
    sget-object v2, Lcom/opera/mini/android/MiniView;->Code:Lcom/opera/mini/android/MiniView;

    invoke-virtual {v2}, Lcom/opera/mini/android/MiniView;->J()V

    .line 351
    iput-boolean v1, p0, Lcom/opera/mini/android/Browser;->g:Z

    .line 353
    iget-object v2, p0, Lcom/opera/mini/android/Browser;->B:Landroid/content/Intent;

    if-eqz v2, :cond_29

    .line 355
    iget-object v3, p0, Lcom/opera/mini/android/Browser;->B:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v4, 0x100000

    and-int/2addr v2, v4

    if-nez v2, :cond_26

    iget-boolean v2, p0, Lcom/opera/mini/android/Browser;->b:Z

    if-eqz v2, :cond_32

    .line 356
    :cond_26
    :goto_26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/opera/mini/android/Browser;->B:Landroid/content/Intent;

    .line 358
    :cond_29
    new-instance v0, Lcom/opera/mini/android/events/ActivityResumeEvent;

    invoke-direct {v0, p0}, Lcom/opera/mini/android/events/ActivityResumeEvent;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/opera/mini/android/events/EventDispatcher;->Code(Ljava/lang/Object;)V

    goto :goto_b

    .line 355
    :cond_32
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    sget v4, Lcom/opera/mini/android/s;->al:I

    if-lt v4, v5, :cond_57

    invoke-static {v2}, Lcom/opera/mini/android/af;->Code(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_57

    move v2, v0

    :goto_41
    if-eqz v2, :cond_59

    sget v0, Lcom/opera/mini/android/s;->al:I

    if-lt v0, v5, :cond_26

    sget-object v0, Lcom/opera/mini/android/Browser;->I:Lcom/opera/mini/android/Browser;

    if-eqz v0, :cond_26

    invoke-static {v3}, Lcom/opera/mini/android/af;->Code(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    sget-object v1, Lcom/opera/mini/android/Browser;->I:Lcom/opera/mini/android/Browser;

    invoke-direct {v1, v0}, Lcom/opera/mini/android/Browser;->I(Ljava/lang/String;)V

    goto :goto_26

    :cond_57
    move v2, v1

    goto :goto_41

    :cond_59
    sget-boolean v2, Lcom/opera/mini/android/s;->am:Z

    if-eqz v2, :cond_74

    invoke-static {v3}, Lcom/opera/mini/android/notifications/q;->Code(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_26

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_71

    const-string v4, "com.opera.mini.android.ACTION_NOTIFICATION:"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_98

    :cond_71
    move v0, v1

    :goto_72
    if-nez v0, :cond_26

    :cond_74
    const-string v0, "android.speech.action.VOICE_SEARCH_RESULTS"

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    const-string v0, "android.speech.extras.VOICE_SEARCH_RESULT_URLS"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_b0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_b0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/opera/mini/android/Browser;->I(Ljava/lang/String;)V

    goto :goto_26

    :cond_98
    invoke-static {p0}, Lcom/opera/mini/android/notifications/g;->Code(Landroid/content/Context;)Lcom/opera/mini/android/notifications/g;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v4, v2}, Lcom/opera/mini/android/notifications/g;->Code(Ljava/lang/String;)Lcom/opera/mini/android/notifications/o;

    move-result-object v2

    if-nez v2, :cond_ac

    move v0, v1

    goto :goto_72

    :cond_ac
    invoke-virtual {v2}, Lcom/opera/mini/android/notifications/o;->a()V

    goto :goto_72

    :cond_b0
    invoke-virtual {v3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    const-string v1, "operamini:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c4

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_c4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_26

    invoke-direct {p0, v0}, Lcom/opera/mini/android/Browser;->I(Ljava/lang/String;)V

    goto/16 :goto_26
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 369
    const-string v0, "com.opera.mini.android.IGNORE_ALREADY_HANDLED_START_INTENT"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 370
    return-void
.end method

.method public onSearchRequested()Z
    .registers 2

    .prologue
    .line 277
    const/4 v0, 0x0

    return v0
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 96
    invoke-super {p0}, Lcom/opera/mini/android/TrackedActivity;->onStart()V

    .line 98
    iget-boolean v0, p0, Lcom/opera/mini/android/Browser;->f:Z

    if-eqz v0, :cond_8

    .line 106
    :goto_7
    return-void

    .line 103
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/opera/mini/android/Browser;->Z:Z

    .line 105
    sget-object v0, Lcom/opera/mini/android/Browser;->Code:Lcom/opera/mini/android/Code;

    invoke-virtual {v0}, Lcom/opera/mini/android/Code;->A()V

    goto :goto_7
.end method

.method protected onStop()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 415
    invoke-super {p0}, Lcom/opera/mini/android/TrackedActivity;->onStop()V

    .line 416
    iget-boolean v0, p0, Lcom/opera/mini/android/Browser;->f:Z

    if-eqz v0, :cond_9

    .line 439
    :goto_8
    return-void

    .line 422
    :cond_9
    :try_start_9
    sget-object v0, Lcom/opera/mini/android/Browser;->Code:Lcom/opera/mini/android/Code;

    iget-boolean v0, v0, Lcom/opera/mini/android/Code;->C:Z

    if-eqz v0, :cond_2c

    sget-boolean v0, Ldb;->E:Z

    if-eqz v0, :cond_2c

    sget-object v0, Lar;->Code:Lci;

    invoke-interface {v0}, Lci;->p()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 424
    sget-object v0, Lcom/opera/mini/android/Browser;->Code:Lcom/opera/mini/android/Code;

    invoke-virtual {v0}, Lcom/opera/mini/android/Code;->h()V

    .line 425
    sget-object v0, Lcom/opera/mini/android/Browser;->Code:Lcom/opera/mini/android/Code;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/opera/mini/android/Code;->Code(Z)V

    .line 426
    sget-object v0, Lcom/opera/mini/android/Browser;->Code:Lcom/opera/mini/android/Code;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/opera/mini/android/Code;->Z(I)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_2c} :catch_37

    .line 433
    :cond_2c
    :goto_2c
    invoke-static {}, Lcom/opera/mini/android/br;->B()V

    .line 436
    sget-object v0, Lcom/opera/mini/android/MiniView;->Code:Lcom/opera/mini/android/MiniView;

    invoke-virtual {v0}, Lcom/opera/mini/android/MiniView;->B()V

    .line 437
    iput-boolean v2, p0, Lcom/opera/mini/android/Browser;->Z:Z

    goto :goto_8

    :catch_37
    move-exception v0

    goto :goto_2c
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/opera/mini/android/Browser;->f:Z

    if-nez v0, :cond_c

    sget-object v0, Lar;->Code:Lci;

    invoke-interface {v0}, Lci;->p()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 273
    :cond_c
    :goto_c
    return-void

    .line 272
    :cond_d
    sget-object v0, Lar;->I:Lar;

    invoke-virtual {v0, p1}, Lar;->I(Z)V

    goto :goto_c
.end method
