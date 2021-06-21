.class public Lcom/begal/appclone/classes/PasswordActivity;
.super Landroid/app/Activity;
.source "PasswordActivity.java"


# static fields
.field public static final PREF_KEY_PASSWORD_ENTERED:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field public static sUnlocked:Z


# instance fields
.field private mDialogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Dialog;",
            ">;"
        }
    .end annotation
.end field

.field private mEditText:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mHidePasswordCharacters:Z

.field private mOriginalActivityName:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mPasswordProtectApp:Z

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mStealthMode:Z

.field private mStealthModeUseFingerprint:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 46
    const-class v0, Lcom/begal/appclone/classes/PasswordActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/begal/appclone/classes/PasswordActivity;->TAG:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/begal/appclone/classes/PasswordActivity;

    .line 49
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_passwordEntered"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/begal/appclone/classes/PasswordActivity;->PREF_KEY_PASSWORD_ENTERED:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/begal/appclone/classes/PasswordActivity;->mDialogs:Ljava/util/List;

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/begal/appclone/classes/PasswordActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/begal/appclone/classes/PasswordActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/begal/appclone/classes/PasswordActivity;

    .line 44
    invoke-direct {p0}, Lcom/begal/appclone/classes/PasswordActivity;->exit()V

    return-void
.end method

.method static synthetic access$100(Lcom/begal/appclone/classes/PasswordActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/begal/appclone/classes/PasswordActivity;

    .line 44
    invoke-direct {p0}, Lcom/begal/appclone/classes/PasswordActivity;->onOk()V

    return-void
.end method

.method static synthetic access$200(Lcom/begal/appclone/classes/PasswordActivity;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/PasswordActivity;

    .line 44
    invoke-direct {p0}, Lcom/begal/appclone/classes/PasswordActivity;->getLongPressRunnable()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .line 44
    sget-object v0, Lcom/begal/appclone/classes/PasswordActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/begal/appclone/classes/PasswordActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/PasswordActivity;

    .line 44
    iget-boolean v0, p0, Lcom/begal/appclone/classes/PasswordActivity;->mStealthModeUseFingerprint:Z

    return v0
.end method

.method static synthetic access$500(Lcom/begal/appclone/classes/PasswordActivity;Landroid/content/Context;)V
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/PasswordActivity;
    .param p1, "x1"    # Landroid/content/Context;

    .line 44
    invoke-direct {p0, p1}, Lcom/begal/appclone/classes/PasswordActivity;->listenFingerprints(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$600(Lcom/begal/appclone/classes/PasswordActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/begal/appclone/classes/PasswordActivity;

    .line 44
    invoke-direct {p0}, Lcom/begal/appclone/classes/PasswordActivity;->onDoubleLongPress()V

    return-void
.end method

.method static synthetic access$700(Lcom/begal/appclone/classes/PasswordActivity;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/PasswordActivity;

    .line 44
    iget-object v0, p0, Lcom/begal/appclone/classes/PasswordActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private exit()V
    .registers 3

    .line 470
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_a

    .line 471
    invoke-virtual {p0}, Lcom/begal/appclone/classes/PasswordActivity;->finishAndRemoveTask()V

    goto :goto_d

    .line 473
    :cond_a
    invoke-virtual {p0}, Lcom/begal/appclone/classes/PasswordActivity;->finish()V

    .line 476
    :goto_d
    new-instance v0, Lcom/begal/appclone/classes/PasswordActivity$9;

    invoke-direct {v0, p0}, Lcom/begal/appclone/classes/PasswordActivity$9;-><init>(Lcom/begal/appclone/classes/PasswordActivity;)V

    .line 485
    invoke-virtual {v0}, Lcom/begal/appclone/classes/PasswordActivity$9;->start()V

    .line 486
    return-void
.end method

.method private getLongPressRunnable()Ljava/lang/Runnable;
    .registers 2

    .line 376
    new-instance v0, Lcom/begal/appclone/classes/PasswordActivity$8;

    invoke-direct {v0, p0}, Lcom/begal/appclone/classes/PasswordActivity$8;-><init>(Lcom/begal/appclone/classes/PasswordActivity;)V

    return-object v0
.end method

.method private listenFingerprints(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 333
    const-string v0, "fingerprint"

    .line 334
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    .line 335
    .local v0, "fingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    if-eqz v0, :cond_1d

    .line 336
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 337
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/begal/appclone/classes/PasswordActivity$7;

    invoke-direct {v5, p0, p1}, Lcom/begal/appclone/classes/PasswordActivity$7;-><init>(Lcom/begal/appclone/classes/PasswordActivity;Landroid/content/Context;)V

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V

    .line 372
    :cond_1d
    return-void
.end method

.method private onDoubleLongPress()V
    .registers 2

    .line 403
    iget-boolean v0, p0, Lcom/begal/appclone/classes/PasswordActivity;->mPasswordProtectApp:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/begal/appclone/classes/PasswordActivity;->mPassword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_14

    .line 406
    :cond_d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/begal/appclone/classes/PasswordActivity;->mStealthMode:Z

    .line 407
    invoke-direct {p0}, Lcom/begal/appclone/classes/PasswordActivity;->showDialog()V

    goto :goto_17

    .line 404
    :cond_14
    :goto_14
    invoke-direct {p0}, Lcom/begal/appclone/classes/PasswordActivity;->startApp()V

    .line 409
    :goto_17
    return-void
.end method

.method private onOk()V
    .registers 6

    .line 414
    const/4 v0, 0x0

    move v1, v0

    .line 416
    .local v1, "unlocked":Z
    const/4 v2, 0x1

    :try_start_3
    iget-object v3, p0, Lcom/begal/appclone/classes/PasswordActivity;->mEditText:Landroid/widget/EditText;

    if-eqz v3, :cond_1b

    iget-object v3, p0, Lcom/begal/appclone/classes/PasswordActivity;->mPassword:Ljava/lang/String;

    iget-object v4, p0, Lcom/begal/appclone/classes/PasswordActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_17} :catch_1d

    if-eqz v3, :cond_1b

    const/4 v0, 0x1

    nop

    :cond_1b
    move v1, v0

    .line 419
    goto :goto_23

    .line 417
    :catch_1d
    move-exception v0

    .line 418
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/begal/appclone/classes/PasswordActivity;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 421
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_23
    if-eqz v1, :cond_3f

    .line 424
    :try_start_25
    iget-object v0, p0, Lcom/begal/appclone/classes/PasswordActivity;->mPreferences:Landroid/content/SharedPreferences;

    .line 425
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v3, Lcom/begal/appclone/classes/PasswordActivity;->PREF_KEY_PASSWORD_ENTERED:Ljava/lang/String;

    .line 426
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 427
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_34} :catch_35

    .line 430
    goto :goto_3b

    .line 428
    :catch_35
    move-exception v0

    .line 429
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v2, Lcom/begal/appclone/classes/PasswordActivity;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 432
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3b
    invoke-direct {p0}, Lcom/begal/appclone/classes/PasswordActivity;->startApp()V

    goto :goto_42

    .line 435
    :cond_3f
    invoke-direct {p0}, Lcom/begal/appclone/classes/PasswordActivity;->exit()V

    .line 437
    :goto_42
    return-void
.end method

.method private showDialog()V
    .registers 18

    .line 130
    move-object/from16 v1, p0

    :try_start_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lt v2, v3, :cond_c

    const/4 v2, 0x1

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    .line 133
    .local v2, "material":Z
    :goto_d
    if-eqz v2, :cond_18

    .line 134
    new-instance v3, Landroid/view/ContextThemeWrapper;

    const v6, 0x103012b

    invoke-direct {v3, v1, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 134
    .local v3, "context":Landroid/content/Context;
    goto :goto_20

    .line 137
    .end local v3    # "context":Landroid/content/Context;
    :cond_18
    new-instance v3, Landroid/view/ContextThemeWrapper;

    const v6, 0x1030128

    invoke-direct {v3, v1, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 141
    .restart local v3    # "context":Landroid/content/Context;
    :goto_20
    const/high16 v6, 0x41c00000    # 24.0f

    invoke-static {v3, v6}, Lcom/begal/appclone/classes/Utils;->dp2px(Landroid/content/Context;F)I

    move-result v6

    .line 142
    .local v6, "padding":I
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 144
    .local v7, "frameLayout":Landroid/widget/FrameLayout;
    if-eqz v2, :cond_2f

    const/4 v8, 0x0

    goto :goto_30

    :cond_2f
    move v8, v6

    :goto_30
    invoke-virtual {v7, v6, v6, v6, v8}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 146
    const v8, 0x104000a

    invoke-virtual {v1, v8}, Lcom/begal/appclone/classes/PasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 147
    .local v8, "positiveLabel":Ljava/lang/String;
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 148
    .local v9, "builder":Landroid/app/AlertDialog$Builder;
    iget-boolean v10, v1, Lcom/begal/appclone/classes/PasswordActivity;->mStealthMode:Z

    if-eqz v10, :cond_123

    .line 150
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 151
    .local v10, "textView":Landroid/widget/TextView;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unfortunately, "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/begal/appclone/classes/Utils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " has stopped."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_62} :catch_1f3

    .line 155
    .local v11, "message":Ljava/lang/String;
    :try_start_62
    invoke-virtual/range {p0 .. p0}, Lcom/begal/appclone/classes/PasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const-string v13, "aerr_application"

    const-string v14, "string"

    const-string v15, "android"

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 156
    .local v12, "aerrApplicationId":I
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3}, Lcom/begal/appclone/classes/Utils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v4, v5

    invoke-virtual {v1, v12, v4}, Lcom/begal/appclone/classes/PasswordActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v11, v4

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/begal/appclone/classes/PasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v13, "aerr_close"

    const-string v14, "string"

    const-string v15, "android"

    invoke-virtual {v4, v13, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 158
    .local v4, "aerrCloseId":I
    invoke-virtual {v1, v4}, Lcom/begal/appclone/classes/PasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object v8, v13

    .line 160
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_92
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_92} :catch_102

    const/16 v14, 0x18

    if-lt v13, v14, :cond_101

    .line 164
    :try_start_96
    invoke-virtual/range {p0 .. p0}, Lcom/begal/appclone/classes/PasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const-string v14, "aerr_list_item"

    const-string v15, "style"

    const-string v5, "android"

    invoke-virtual {v13, v14, v15, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 165
    .local v5, "styleId":I
    new-instance v13, Landroid/widget/TextView;

    new-instance v14, Landroid/view/ContextThemeWrapper;

    invoke-direct {v14, v3, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v13, v14}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_ae} :catch_b0
    .catch Ljava/lang/Throwable; {:try_start_96 .. :try_end_ae} :catch_102

    move-object v10, v13

    .line 168
    .end local v5    # "styleId":I
    goto :goto_b7

    .line 166
    :catch_b0
    move-exception v0

    move-object v5, v0

    .line 167
    .local v5, "e":Ljava/lang/Exception;
    :try_start_b2
    sget-object v13, Lcom/begal/appclone/classes/PasswordActivity;->TAG:Ljava/lang/String;

    invoke-static {v13, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_b7
    invoke-virtual {v9, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/begal/appclone/classes/PasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v13, "aerr_restart"

    const-string v14, "string"

    const-string v15, "android"

    invoke-virtual {v5, v13, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 173
    .local v5, "aerrRestartId":I
    invoke-virtual {v1, v5}, Lcom/begal/appclone/classes/PasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object v11, v13

    .line 174
    const/4 v8, 0x0

    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/begal/appclone/classes/PasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const-string v14, "ic_refresh"

    const-string v15, "drawable"

    move/from16 v16, v4

    const-string v4, "android"

    .line 175
    .end local v4    # "aerrCloseId":I
    .local v16, "aerrCloseId":I
    invoke-virtual {v13, v14, v15, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 176
    .local v4, "icRefreshId":I
    const/4 v13, 0x0

    invoke-virtual {v10, v4, v13, v13, v13}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 177
    const/high16 v13, 0x42000000    # 32.0f

    invoke-static {v3, v13}, Lcom/begal/appclone/classes/Utils;->dp2px(Landroid/content/Context;F)I

    move-result v13

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 178
    const/high16 v13, 0x41a00000    # 20.0f

    invoke-static {v3, v13}, Lcom/begal/appclone/classes/Utils;->dp2px(Landroid/content/Context;F)I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v10, v14, v14, v14, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 179
    new-instance v13, Lcom/begal/appclone/classes/PasswordActivity$1;

    invoke-direct {v13, v1}, Lcom/begal/appclone/classes/PasswordActivity$1;-><init>(Lcom/begal/appclone/classes/PasswordActivity;)V

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_101
    .catch Ljava/lang/Throwable; {:try_start_b2 .. :try_end_101} :catch_102

    .line 189
    .end local v4    # "icRefreshId":I
    .end local v5    # "aerrRestartId":I
    .end local v12    # "aerrApplicationId":I
    .end local v16    # "aerrCloseId":I
    :cond_101
    goto :goto_109

    .line 187
    :catch_102
    move-exception v0

    move-object v4, v0

    .line 188
    .local v4, "t":Ljava/lang/Throwable;
    :try_start_104
    sget-object v5, Lcom/begal/appclone/classes/PasswordActivity;->TAG:Ljava/lang/String;

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    .end local v4    # "t":Ljava/lang/Throwable;
    :goto_109
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    if-eqz v2, :cond_119

    .line 193
    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 194
    const/high16 v4, -0x1000000

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_11f

    .line 196
    :cond_119
    const v4, 0x1030044

    invoke-virtual {v10, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 198
    :goto_11f
    invoke-virtual {v7, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 200
    .end local v10    # "textView":Landroid/widget/TextView;
    .end local v11    # "message":Ljava/lang/String;
    goto :goto_185

    .line 202
    :cond_123
    new-instance v5, Landroid/widget/EditText;

    invoke-direct {v5, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v5, v1, Lcom/begal/appclone/classes/PasswordActivity;->mEditText:Landroid/widget/EditText;

    .line 203
    iget-object v5, v1, Lcom/begal/appclone/classes/PasswordActivity;->mEditText:Landroid/widget/EditText;

    iget-object v10, v1, Lcom/begal/appclone/classes/PasswordActivity;->mPassword:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v10

    const/4 v11, 0x2

    if-eqz v10, :cond_137

    const/4 v4, 0x2

    nop

    :cond_137
    const/high16 v10, 0x80000

    or-int/2addr v4, v10

    or-int/lit16 v4, v4, 0x80

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 208
    iget-object v4, v1, Lcom/begal/appclone/classes/PasswordActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v11}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 209
    iget-object v4, v1, Lcom/begal/appclone/classes/PasswordActivity;->mEditText:Landroid/widget/EditText;

    new-instance v5, Lcom/begal/appclone/classes/PasswordActivity$2;

    invoke-direct {v5, v1}, Lcom/begal/appclone/classes/PasswordActivity$2;-><init>(Lcom/begal/appclone/classes/PasswordActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 217
    iget-boolean v4, v1, Lcom/begal/appclone/classes/PasswordActivity;->mHidePasswordCharacters:Z
    :try_end_150
    .catch Ljava/lang/Throwable; {:try_start_104 .. :try_end_150} :catch_1f3

    if-eqz v4, :cond_170

    .line 219
    nop

    .line 220
    :try_start_153
    invoke-static {v3}, Lcom/begal/appclone/classes/Utils;->getSecondaryClassLoader(Landroid/content/Context;)Ljava/lang/ClassLoader;

    move-result-object v4

    const-string v5, "com.begal.appclone.classes.secondary.util.NoEchoPasswordTransformationMethod"

    invoke-virtual {v4, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 222
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/method/PasswordTransformationMethod;

    .line 223
    .local v4, "passwordTransformationMethod":Landroid/text/method/PasswordTransformationMethod;
    iget-object v5, v1, Lcom/begal/appclone/classes/PasswordActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V
    :try_end_168
    .catch Ljava/lang/Throwable; {:try_start_153 .. :try_end_168} :catch_169

    .line 226
    .end local v4    # "passwordTransformationMethod":Landroid/text/method/PasswordTransformationMethod;
    goto :goto_170

    .line 224
    :catch_169
    move-exception v0

    move-object v4, v0

    .line 225
    .local v4, "t":Ljava/lang/Throwable;
    :try_start_16b
    sget-object v5, Lcom/begal/appclone/classes/PasswordActivity;->TAG:Ljava/lang/String;

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_170
    :goto_170
    iget-object v4, v1, Lcom/begal/appclone/classes/PasswordActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v7, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 231
    const-string v4, "Enter password"

    invoke-virtual {v9, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    new-instance v10, Lcom/begal/appclone/classes/PasswordActivity$3;

    invoke-direct {v10, v1}, Lcom/begal/appclone/classes/PasswordActivity$3;-><init>(Lcom/begal/appclone/classes/PasswordActivity;)V

    .line 232
    invoke-virtual {v4, v5, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 240
    :goto_185
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_193

    .line 241
    new-instance v4, Lcom/begal/appclone/classes/PasswordActivity$4;

    invoke-direct {v4, v1}, Lcom/begal/appclone/classes/PasswordActivity$4;-><init>(Lcom/begal/appclone/classes/PasswordActivity;)V

    invoke-virtual {v9, v8, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 249
    :cond_193
    nop

    .line 250
    invoke-virtual {v9, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 251
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 252
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 253
    .local v4, "dialog":Landroid/app/AlertDialog;
    iget-object v5, v1, Lcom/begal/appclone/classes/PasswordActivity;->mDialogs:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    iget-boolean v5, v1, Lcom/begal/appclone/classes/PasswordActivity;->mStealthMode:Z

    if-eqz v5, :cond_1b2

    .line 256
    new-instance v5, Lcom/begal/appclone/classes/PasswordActivity$5;

    invoke-direct {v5, v1, v4, v3}, Lcom/begal/appclone/classes/PasswordActivity$5;-><init>(Lcom/begal/appclone/classes/PasswordActivity;Landroid/app/AlertDialog;Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 297
    :cond_1b2
    new-instance v5, Lcom/begal/appclone/classes/PasswordActivity$6;

    invoke-direct {v5, v1}, Lcom/begal/appclone/classes/PasswordActivity$6;-><init>(Lcom/begal/appclone/classes/PasswordActivity;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    :try_end_1ba
    .catch Ljava/lang/Throwable; {:try_start_16b .. :try_end_1ba} :catch_1f3

    .line 307
    :try_start_1ba
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v5, v10}, Landroid/view/Window;->setDimAmount(F)V

    .line 308
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 309
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v10, 0x5

    invoke-virtual {v5, v10}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 312
    invoke-static {v3}, Lcom/begal/appclone/classes/Utils;->getTargetSdkVersion(Landroid/content/Context;)I

    move-result v5

    .line 313
    .local v5, "targetSdkVersion":I
    const/16 v10, 0x17

    if-ge v5, v10, :cond_1e4

    .line 314
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/16 v11, 0x7d3

    invoke-virtual {v10, v11}, Landroid/view/Window;->setType(I)V
    :try_end_1e4
    .catch Ljava/lang/Exception; {:try_start_1ba .. :try_end_1e4} :catch_1e5
    .catch Ljava/lang/Throwable; {:try_start_1ba .. :try_end_1e4} :catch_1f3

    .line 318
    .end local v5    # "targetSdkVersion":I
    :cond_1e4
    goto :goto_1ec

    .line 316
    :catch_1e5
    move-exception v0

    move-object v5, v0

    .line 317
    .local v5, "e":Ljava/lang/Exception;
    :try_start_1e7
    sget-object v10, Lcom/begal/appclone/classes/PasswordActivity;->TAG:Ljava/lang/String;

    invoke-static {v10, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 320
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_1ec
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 322
    invoke-static {v4}, Lcom/begal/appclone/classes/Utils;->keepDialogOpenOnOrientationChange(Landroid/app/Dialog;)V
    :try_end_1f2
    .catch Ljava/lang/Throwable; {:try_start_1e7 .. :try_end_1f2} :catch_1f3

    .line 327
    .end local v2    # "material":Z
    .end local v3    # "context":Landroid/content/Context;
    .end local v4    # "dialog":Landroid/app/AlertDialog;
    .end local v6    # "padding":I
    .end local v7    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v8    # "positiveLabel":Ljava/lang/String;
    .end local v9    # "builder":Landroid/app/AlertDialog$Builder;
    goto :goto_1fd

    .line 324
    :catch_1f3
    move-exception v0

    move-object v2, v0

    .line 325
    .local v2, "t":Ljava/lang/Throwable;
    sget-object v3, Lcom/begal/appclone/classes/PasswordActivity;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 326
    invoke-direct/range {p0 .. p0}, Lcom/begal/appclone/classes/PasswordActivity;->exit()V

    .line 328
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_1fd
    return-void
.end method

.method private startApp()V
    .registers 3

    .line 442
    const/4 v0, 0x1

    sput-boolean v0, Lcom/begal/appclone/classes/PasswordActivity;->sUnlocked:Z

    .line 445
    :try_start_3
    iget-object v0, p0, Lcom/begal/appclone/classes/PasswordActivity;->mDialogs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Dialog;

    .line 446
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_18} :catch_1a

    .line 447
    .end local v1    # "dialog":Landroid/app/Dialog;
    goto :goto_9

    .line 450
    :cond_19
    goto :goto_20

    .line 448
    :catch_1a
    move-exception v0

    .line 449
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/begal/appclone/classes/PasswordActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 453
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_20
    :try_start_20
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/begal/appclone/classes/PasswordActivity;->mOriginalActivityName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 454
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 455
    invoke-virtual {p0}, Lcom/begal/appclone/classes/PasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 456
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_3d

    .line 457
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 459
    :cond_3d
    invoke-virtual {p0, v0}, Lcom/begal/appclone/classes/PasswordActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_40} :catch_41

    .line 462
    .end local v0    # "i":Landroid/content/Intent;
    .end local v1    # "extras":Landroid/os/Bundle;
    goto :goto_47

    .line 460
    :catch_41
    move-exception v0

    .line 461
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/begal/appclone/classes/PasswordActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 464
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_47
    invoke-virtual {p0}, Lcom/begal/appclone/classes/PasswordActivity;->finish()V

    .line 465
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    :try_start_3
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/begal/appclone/classes/PasswordActivity;->mPreferences:Landroid/content/SharedPreferences;

    .line 76
    invoke-virtual {p0}, Lcom/begal/appclone/classes/PasswordActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/begal/appclone/classes/PasswordActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x81

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 78
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 79
    .local v1, "metaData":Landroid/os/Bundle;
    if-eqz v1, :cond_f0

    .line 80
    const-string v2, "com.begal.appclone.originalActivityName"

    .line 81
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/begal/appclone/classes/PasswordActivity;->mOriginalActivityName:Ljava/lang/String;

    .line 82
    iget-object v2, p0, Lcom/begal/appclone/classes/PasswordActivity;->mOriginalActivityName:Ljava/lang/String;

    if-eqz v2, :cond_48

    iget-object v2, p0, Lcom/begal/appclone/classes/PasswordActivity;->mOriginalActivityName:Ljava/lang/String;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/begal/appclone/classes/PasswordActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/begal/appclone/classes/PasswordActivity;->mOriginalActivityName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/begal/appclone/classes/PasswordActivity;->mOriginalActivityName:Ljava/lang/String;

    .line 86
    :cond_48
    invoke-static {p0}, Lcom/begal/appclone/classes/CloneSettings;->getInstance(Landroid/content/Context;)Lcom/begal/appclone/classes/CloneSettings;

    move-result-object v2

    .line 87
    .local v2, "cloneSettings":Lcom/begal/appclone/classes/CloneSettings;
    const-string v3, "passwordProtectApp"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/begal/appclone/classes/PasswordActivity;->mPasswordProtectApp:Z

    .line 88
    const-string v3, "appPassword"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/begal/appclone/classes/PasswordActivity;->mPassword:Ljava/lang/String;

    .line 89
    const-string v3, "stealthMode"

    invoke-virtual {v2, v3}, Lcom/begal/appclone/classes/CloneSettings;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7f

    .line 90
    const-string v3, "stealthMode"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/begal/appclone/classes/PasswordActivity;->mStealthMode:Z

    goto :goto_8f

    .line 92
    :cond_7f
    const-string v3, "appPasswordStealthMode"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/begal/appclone/classes/PasswordActivity;->mStealthMode:Z

    .line 94
    :goto_8f
    const-string v3, "stealthModeUseFingerprint"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/begal/appclone/classes/PasswordActivity;->mStealthModeUseFingerprint:Z

    .line 95
    const-string v3, "hidePasswordCharacters"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/begal/appclone/classes/PasswordActivity;->mHidePasswordCharacters:Z

    .line 97
    iget-object v3, p0, Lcom/begal/appclone/classes/PasswordActivity;->mPassword:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c9

    const-string v3, "appPasswordAskOnlyOnce"

    .line 98
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_c9

    const/4 v3, 0x1

    goto :goto_ca

    :cond_c9
    const/4 v3, 0x0

    .line 108
    .local v3, "askOnlyOnce":Z
    :goto_ca
    if-eqz v3, :cond_f0

    .line 109
    iget-object v5, p0, Lcom/begal/appclone/classes/PasswordActivity;->mPreferences:Landroid/content/SharedPreferences;

    sget-object v6, Lcom/begal/appclone/classes/PasswordActivity;->PREF_KEY_PASSWORD_ENTERED:Ljava/lang/String;

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 110
    .local v4, "passwordEntered":Z
    sget-object v5, Lcom/begal/appclone/classes/PasswordActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreate; passwordEntered: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    if-eqz v4, :cond_f0

    .line 112
    invoke-direct {p0}, Lcom/begal/appclone/classes/PasswordActivity;->startApp()V
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_ef} :catch_f1

    .line 113
    return-void

    .line 120
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "metaData":Landroid/os/Bundle;
    .end local v2    # "cloneSettings":Lcom/begal/appclone/classes/CloneSettings;
    .end local v3    # "askOnlyOnce":Z
    .end local v4    # "passwordEntered":Z
    :cond_f0
    goto :goto_fa

    .line 117
    :catch_f1
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/begal/appclone/classes/PasswordActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    invoke-direct {p0}, Lcom/begal/appclone/classes/PasswordActivity;->exit()V

    .line 122
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_fa
    invoke-direct {p0}, Lcom/begal/appclone/classes/PasswordActivity;->showDialog()V

    .line 123
    return-void
.end method
