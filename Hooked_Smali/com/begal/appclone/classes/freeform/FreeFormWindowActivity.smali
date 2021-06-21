.class public Lcom/begal/appclone/classes/freeform/FreeFormWindowActivity;
.super Landroid/app/Activity;
.source "FreeFormWindowActivity.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sFreeFormWindow:Lcom/begal/appclone/classes/freeform/FreeFormWindow;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    const-class v0, Lcom/begal/appclone/classes/freeform/FreeFormWindowActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/begal/appclone/classes/freeform/FreeFormWindowActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static getRealScreenSize(Landroid/view/Display;)Landroid/graphics/Point;
    .registers 11
    .param p0, "d"    # Landroid/view/Display;

    .line 140
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 141
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 143
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 144
    .local v1, "widthPixels":I
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 146
    .local v2, "heightPixels":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    const/4 v5, 0x0

    const/16 v6, 0xe

    if-lt v3, v6, :cond_49

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v4, :cond_49

    .line 148
    :try_start_19
    const-class v3, Landroid/view/Display;

    const-string v6, "getRawWidth"

    new-array v7, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v1, v3

    .line 149
    const-class v3, Landroid/view/Display;

    const-string v6, "getRawHeight"

    new-array v7, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_46} :catch_48

    move v2, v3

    .line 151
    goto :goto_49

    .line 150
    :catch_48
    move-exception v3

    .line 154
    :cond_49
    :goto_49
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v4, :cond_70

    .line 156
    :try_start_4d
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 157
    .local v3, "realSize":Landroid/graphics/Point;
    const-class v4, Landroid/view/Display;

    const-string v6, "getRealSize"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Landroid/graphics/Point;

    aput-object v9, v8, v5

    invoke-virtual {v4, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v3, v6, v5

    invoke-virtual {v4, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget v4, v3, Landroid/graphics/Point;->x:I

    move v1, v4

    .line 159
    iget v4, v3, Landroid/graphics/Point;->y:I
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_6d} :catch_6f

    move v2, v4

    .line 161
    .end local v3    # "realSize":Landroid/graphics/Point;
    goto :goto_70

    .line 160
    :catch_6f
    move-exception v3

    .line 164
    :cond_70
    :goto_70
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v3
.end method


# virtual methods
.method public getDefaultActivityBounds()Landroid/graphics/Rect;
    .registers 9

    .line 125
    invoke-virtual {p0}, Lcom/begal/appclone/classes/freeform/FreeFormWindowActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-static {v0}, Lcom/begal/appclone/classes/freeform/FreeFormWindowActivity;->getRealScreenSize(Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object v0

    .line 126
    .local v0, "realScreenSize":Landroid/graphics/Point;
    sget-object v1, Lcom/begal/appclone/classes/freeform/FreeFormWindowActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultActivityBounds; realScreenSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const v2, 0x3f4ccccd    # 0.8f

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 129
    .local v1, "width":I
    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    mul-float v3, v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 130
    .local v2, "height":I
    iget v3, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    .line 131
    .local v3, "left":I
    iget v4, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    .line 132
    .local v4, "top":I
    add-int v5, v3, v1

    .line 133
    .local v5, "right":I
    add-int v6, v4, v2

    .line 135
    .local v6, "bottom":I
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v7
.end method

.method public loadActivityBounds()Landroid/graphics/Rect;
    .registers 11

    .line 95
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 96
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "free_form_window_left"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 97
    .local v2, "left":I
    const-string v4, "free_form_window_top"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 98
    .local v4, "top":I
    const-string v5, "free_form_window_right"

    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 99
    .local v5, "right":I
    const-string v6, "free_form_window_bottom"

    invoke-interface {v1, v6, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 101
    .local v3, "bottom":I
    sget-object v6, Lcom/begal/appclone/classes/freeform/FreeFormWindowActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadActivityBounds; left: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", top: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", right: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", bottom: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v2, v4, v5, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 105
    .local v6, "rect":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_58

    .line 106
    return-object v0

    .line 109
    :cond_58
    invoke-virtual {p0}, Lcom/begal/appclone/classes/freeform/FreeFormWindowActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-static {v7}, Lcom/begal/appclone/classes/freeform/FreeFormWindowActivity;->getRealScreenSize(Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object v7

    .line 110
    .local v7, "realScreenSize":Landroid/graphics/Point;
    iget v8, v6, Landroid/graphics/Rect;->left:I

    if-nez v8, :cond_7d

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget v9, v7, Landroid/graphics/Point;->x:I

    if-ne v8, v9, :cond_7d

    iget v8, v6, Landroid/graphics/Rect;->top:I

    if-nez v8, :cond_7d

    .line 111
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v8

    iget v9, v7, Landroid/graphics/Point;->y:I
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7a} :catch_7e

    if-ne v8, v9, :cond_7d

    .line 112
    return-object v0

    .line 115
    :cond_7d
    return-object v6

    .line 117
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    .end local v2    # "left":I
    .end local v3    # "bottom":I
    .end local v4    # "top":I
    .end local v5    # "right":I
    .end local v6    # "rect":Landroid/graphics/Rect;
    .end local v7    # "realScreenSize":Landroid/graphics/Point;
    :catch_7e
    move-exception v1

    .line 118
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/begal/appclone/classes/freeform/FreeFormWindowActivity;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    sget-object v0, Lcom/begal/appclone/classes/freeform/FreeFormWindowActivity;->sFreeFormWindow:Lcom/begal/appclone/classes/freeform/FreeFormWindow;

    if-nez v0, :cond_e

    .line 37
    new-instance v0, Lcom/begal/appclone/classes/freeform/FreeFormWindow;

    invoke-direct {v0}, Lcom/begal/appclone/classes/freeform/FreeFormWindow;-><init>()V

    sput-object v0, Lcom/begal/appclone/classes/freeform/FreeFormWindowActivity;->sFreeFormWindow:Lcom/begal/appclone/classes/freeform/FreeFormWindow;

    .line 41
    :cond_e
    :try_start_e
    invoke-virtual {p0}, Lcom/begal/appclone/classes/freeform/FreeFormWindowActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/begal/appclone/classes/freeform/FreeFormWindowActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x81

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 43
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 44
    .local v1, "metaData":Landroid/os/Bundle;
    if-eqz v1, :cond_d7

    .line 46
    const-string v2, "com.begal.appclone.originalActivityName"

    .line 47
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, "originalActivityName":Ljava/lang/String;
    if-eqz v2, :cond_44

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/begal/appclone/classes/freeform/FreeFormWindowActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 52
    :cond_44
    sget-object v3, Lcom/begal/appclone/classes/freeform/FreeFormWindowActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate; originalActivityName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    new-instance v3, Landroid/content/Intent;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 56
    const/16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 57
    const/high16 v4, 0x10000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 58
    invoke-virtual {p0}, Lcom/begal/appclone/classes/freeform/FreeFormWindowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 59
    .local v4, "extras":Landroid/os/Bundle;
    if-eqz v4, :cond_7f

    .line 60
    invoke-virtual {v3, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 63
    :cond_7f
    invoke-virtual {p0}, Lcom/begal/appclone/classes/freeform/FreeFormWindowActivity;->loadActivityBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 64
    .local v5, "activityBounds":Landroid/graphics/Rect;
    if-nez v5, :cond_8a

    .line 65
    invoke-virtual {p0}, Lcom/begal/appclone/classes/freeform/FreeFormWindowActivity;->getDefaultActivityBounds()Landroid/graphics/Rect;

    move-result-object v6

    move-object v5, v6

    .line 69
    :cond_8a
    const/4 v6, 0x0

    invoke-virtual {p0, v6, v6}, Lcom/begal/appclone/classes/freeform/FreeFormWindowActivity;->overridePendingTransition(II)V

    .line 70
    invoke-virtual {p0}, Lcom/begal/appclone/classes/freeform/FreeFormWindowActivity;->finish()V

    .line 71
    invoke-virtual {p0, v6, v6}, Lcom/begal/appclone/classes/freeform/FreeFormWindowActivity;->overridePendingTransition(II)V

    .line 73
    sget-object v6, Lcom/begal/appclone/classes/freeform/FreeFormWindowActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCreate; activityBounds: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v6

    .line 75
    invoke-virtual {v6, v5}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    move-result-object v6

    .line 76
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    .line 77
    .local v6, "options":Landroid/os/Bundle;
    invoke-virtual {p0, v3, v6}, Lcom/begal/appclone/classes/freeform/FreeFormWindowActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 78
    sget-object v7, Lcom/begal/appclone/classes/freeform/FreeFormWindowActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCreate; intent: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", options: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_d7} :catch_d8

    .line 82
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "metaData":Landroid/os/Bundle;
    .end local v2    # "originalActivityName":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "extras":Landroid/os/Bundle;
    .end local v5    # "activityBounds":Landroid/graphics/Rect;
    .end local v6    # "options":Landroid/os/Bundle;
    :cond_d7
    goto :goto_de

    .line 80
    :catch_d8
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/begal/appclone/classes/freeform/FreeFormWindowActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_de
    return-void
.end method

.method protected onPause()V
    .registers 2

    .line 87
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 89
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/begal/appclone/classes/freeform/FreeFormWindowActivity;->overridePendingTransition(II)V

    .line 90
    return-void
.end method
