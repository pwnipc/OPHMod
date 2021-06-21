.class public Lcom/begal/appclone/classes/Configuration;
.super Lcom/begal/appclone/classes/AbstractActivityContentProvider;
.source "Configuration.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mDensityDpiScale:F

.field private final mFontScale:F

.field private final mLanguage:Ljava/lang/String;

.field private mOriginalDensityDpi:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    const-class v0, Lcom/begal/appclone/classes/Configuration;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/begal/appclone/classes/Configuration;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/begal/appclone/classes/CloneSettings;)V
    .registers 5
    .param p1, "cloneSettings"    # Lcom/begal/appclone/classes/CloneSettings;

    .line 27
    invoke-direct {p0}, Lcom/begal/appclone/classes/AbstractActivityContentProvider;-><init>()V

    .line 29
    const-string v0, "language"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/begal/appclone/classes/Configuration;->mLanguage:Ljava/lang/String;

    .line 30
    const-string v0, "densityDpiScale"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/begal/appclone/classes/CloneSettings;->getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/begal/appclone/classes/Configuration;->mDensityDpiScale:F

    .line 31
    const-string v0, "fontScale"

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/begal/appclone/classes/CloneSettings;->getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/begal/appclone/classes/Configuration;->mFontScale:F

    .line 33
    sget-object v0, Lcom/begal/appclone/classes/Configuration;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Configuration; mLanguage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/begal/appclone/classes/Configuration;->mLanguage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mDensityDpiScale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/begal/appclone/classes/Configuration;->mDensityDpiScale:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mFontScale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/begal/appclone/classes/Configuration;->mFontScale:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
.end method

.method private setConfiguration(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 66
    .local v0, "config":Landroid/content/res/Configuration;
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object v0, v1

    .line 68
    iget-object v1, p0, Lcom/begal/appclone/classes/Configuration;->mLanguage:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6c

    .line 69
    sget-object v1, Lcom/begal/appclone/classes/Configuration;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setConfiguration; mLanguage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/begal/appclone/classes/Configuration;->mLanguage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :try_start_2e
    iget-object v1, p0, Lcom/begal/appclone/classes/Configuration;->mLanguage:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 74
    .local v1, "pos":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_42

    .line 75
    iget-object v3, p0, Lcom/begal/appclone/classes/Configuration;->mLanguage:Ljava/lang/String;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    move v1, v3

    .line 77
    :cond_42
    if-ne v1, v2, :cond_4c

    .line 78
    new-instance v2, Ljava/util/Locale;

    iget-object v3, p0, Lcom/begal/appclone/classes/Configuration;->mLanguage:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 78
    .local v2, "l":Ljava/util/Locale;
    goto :goto_60

    .line 80
    .end local v2    # "l":Ljava/util/Locale;
    :cond_4c
    new-instance v2, Ljava/util/Locale;

    iget-object v3, p0, Lcom/begal/appclone/classes/Configuration;->mLanguage:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/begal/appclone/classes/Configuration;->mLanguage:Ljava/lang/String;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .restart local v2    # "l":Ljava/util/Locale;
    :goto_60
    invoke-static {v2}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 84
    iput-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_65} :catch_66

    .line 88
    .end local v1    # "pos":I
    .end local v2    # "l":Ljava/util/Locale;
    goto :goto_6c

    .line 86
    :catch_66
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/begal/appclone/classes/Configuration;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6c
    :goto_6c
    iget v1, p0, Lcom/begal/appclone/classes/Configuration;->mDensityDpiScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_b1

    .line 92
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v1, v3, :cond_b1

    .line 93
    iget v1, p0, Lcom/begal/appclone/classes/Configuration;->mOriginalDensityDpi:I

    int-to-float v1, v1

    iget v3, p0, Lcom/begal/appclone/classes/Configuration;->mDensityDpiScale:F

    mul-float v1, v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 94
    .local v1, "densityDpi":I
    sget-object v3, Lcom/begal/appclone/classes/Configuration;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setConfiguration; mOriginalDensityDpi: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/begal/appclone/classes/Configuration;->mOriginalDensityDpi:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mDensityDpiScale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/begal/appclone/classes/Configuration;->mDensityDpiScale:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", densityDpi: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iput v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 102
    .end local v1    # "densityDpi":I
    :cond_b1
    iget v1, p0, Lcom/begal/appclone/classes/Configuration;->mFontScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_d3

    .line 103
    sget-object v1, Lcom/begal/appclone/classes/Configuration;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setConfiguration; mFontScale: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/begal/appclone/classes/Configuration;->mFontScale:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget v1, p0, Lcom/begal/appclone/classes/Configuration;->mFontScale:F

    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 107
    :cond_d3
    sget-object v1, Lcom/begal/appclone/classes/Configuration;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setConfiguration; config: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 110
    .local v1, "resources":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 111
    return-void
.end method


# virtual methods
.method init(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/begal/appclone/classes/Configuration;->mLanguage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/begal/appclone/classes/Configuration;->mDensityDpiScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_16

    iget v0, p0, Lcom/begal/appclone/classes/Configuration;->mFontScale:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2e

    .line 47
    :cond_16
    invoke-virtual {p0}, Lcom/begal/appclone/classes/Configuration;->onCreate()Z

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 50
    .local v0, "config":Landroid/content/res/Configuration;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_2b

    .line 51
    iget v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v1, p0, Lcom/begal/appclone/classes/Configuration;->mOriginalDensityDpi:I

    .line 54
    :cond_2b
    invoke-direct {p0, p1}, Lcom/begal/appclone/classes/Configuration;->setConfiguration(Landroid/content/Context;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_2f

    .line 59
    .end local v0    # "config":Landroid/content/res/Configuration;
    :cond_2e
    goto :goto_35

    .line 57
    :catch_2f
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/begal/appclone/classes/Configuration;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_35
    return-void
.end method

.method protected onActivityCreated(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 115
    sget-object v0, Lcom/begal/appclone/classes/Configuration;->TAG:Ljava/lang/String;

    const-string v1, "onActivityCreated; "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :try_start_7
    invoke-direct {p0, p1}, Lcom/begal/appclone/classes/Configuration;->setConfiguration(Landroid/content/Context;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_b

    .line 121
    goto :goto_11

    .line 119
    :catch_b
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/begal/appclone/classes/Configuration;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_11
    return-void
.end method

.method protected onActivityResumed(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 137
    sget-object v0, Lcom/begal/appclone/classes/Configuration;->TAG:Ljava/lang/String;

    const-string v1, "onActivityResumed; "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :try_start_7
    invoke-direct {p0, p1}, Lcom/begal/appclone/classes/Configuration;->setConfiguration(Landroid/content/Context;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_b

    .line 143
    goto :goto_11

    .line 141
    :catch_b
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/begal/appclone/classes/Configuration;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_11
    return-void
.end method

.method protected onActivityStarted(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 126
    sget-object v0, Lcom/begal/appclone/classes/Configuration;->TAG:Ljava/lang/String;

    const-string v1, "onActivityStarted; "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :try_start_7
    invoke-direct {p0, p1}, Lcom/begal/appclone/classes/Configuration;->setConfiguration(Landroid/content/Context;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_b

    .line 132
    goto :goto_11

    .line 130
    :catch_b
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/begal/appclone/classes/Configuration;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_11
    return-void
.end method
