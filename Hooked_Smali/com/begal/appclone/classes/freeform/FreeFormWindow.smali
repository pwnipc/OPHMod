.class public Lcom/begal/appclone/classes/freeform/FreeFormWindow;
.super Lcom/begal/appclone/classes/AbstractActivityContentProvider;
.source "FreeFormWindow.java"


# static fields
.field public static final PREF_KEY_FREE_FORM_WINDOW_BOTTOM:Ljava/lang/String; = "free_form_window_bottom"

.field public static final PREF_KEY_FREE_FORM_WINDOW_LEFT:Ljava/lang/String; = "free_form_window_left"

.field public static final PREF_KEY_FREE_FORM_WINDOW_RIGHT:Ljava/lang/String; = "free_form_window_right"

.field public static final PREF_KEY_FREE_FORM_WINDOW_TOP:Ljava/lang/String; = "free_form_window_top"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    const-class v0, Lcom/begal/appclone/classes/freeform/FreeFormWindow;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/begal/appclone/classes/freeform/FreeFormWindow;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/begal/appclone/classes/AbstractActivityContentProvider;-><init>()V

    .line 27
    invoke-virtual {p0}, Lcom/begal/appclone/classes/freeform/FreeFormWindow;->onCreate()Z

    .line 28
    return-void
.end method

.method private getActivityBounds(Landroid/app/Activity;)Landroid/graphics/Rect;
    .registers 11
    .param p1, "activity"    # Landroid/app/Activity;

    .line 74
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 75
    .local v0, "decorView":Landroid/view/View;
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 76
    .local v1, "position":[I
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 77
    const/4 v2, 0x0

    aget v2, v1, v2

    .line 78
    .local v2, "left":I
    const/4 v3, 0x1

    aget v3, v1, v3

    .line 79
    .local v3, "top":I
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 80
    .local v4, "width":I
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 81
    .local v5, "height":I
    new-instance v6, Landroid/graphics/Rect;

    add-int v7, v2, v4

    add-int v8, v3, v5

    invoke-direct {v6, v2, v3, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26

    return-object v6

    .line 82
    .end local v0    # "decorView":Landroid/view/View;
    .end local v1    # "position":[I
    .end local v2    # "left":I
    .end local v3    # "top":I
    .end local v4    # "width":I
    .end local v5    # "height":I
    :catch_26
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/begal/appclone/classes/freeform/FreeFormWindow;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    const/4 v1, 0x0

    return-object v1
.end method

.method private saveActivityBounds(Landroid/app/Activity;)V
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;

    .line 41
    sget-object v0, Lcom/begal/appclone/classes/freeform/FreeFormWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveActivityBounds; activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :try_start_16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "className":Ljava/lang/String;
    const-string v1, "com.begal.appclone.classes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 47
    return-void

    .line 50
    :cond_27
    invoke-direct {p0, p1}, Lcom/begal/appclone/classes/freeform/FreeFormWindow;->getActivityBounds(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v1

    .line 51
    .local v1, "rect":Landroid/graphics/Rect;
    if-eqz v1, :cond_77

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_34

    goto :goto_77

    .line 55
    :cond_34
    sget-object v2, Lcom/begal/appclone/classes/freeform/FreeFormWindow;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveActivityBounds; rect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 58
    .local v2, "preferences":Landroid/content/SharedPreferences;
    nop

    .line 59
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "free_form_window_left"

    iget v5, v1, Landroid/graphics/Rect;->left:I

    .line 60
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "free_form_window_top"

    iget v5, v1, Landroid/graphics/Rect;->top:I

    .line 61
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "free_form_window_right"

    iget v5, v1, Landroid/graphics/Rect;->right:I

    .line 62
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "free_form_window_bottom"

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    .line 63
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 64
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_76} :catch_78

    .line 68
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "rect":Landroid/graphics/Rect;
    .end local v2    # "preferences":Landroid/content/SharedPreferences;
    goto :goto_7e

    .line 52
    .restart local v0    # "className":Ljava/lang/String;
    .restart local v1    # "rect":Landroid/graphics/Rect;
    :cond_77
    :goto_77
    return-void

    .line 66
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "rect":Landroid/graphics/Rect;
    :catch_78
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/begal/appclone/classes/freeform/FreeFormWindow;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_7e
    return-void
.end method


# virtual methods
.method protected onActivityPaused(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 32
    invoke-direct {p0, p1}, Lcom/begal/appclone/classes/freeform/FreeFormWindow;->saveActivityBounds(Landroid/app/Activity;)V

    .line 33
    return-void
.end method

.method protected onActivityStopped(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 37
    invoke-direct {p0, p1}, Lcom/begal/appclone/classes/freeform/FreeFormWindow;->saveActivityBounds(Landroid/app/Activity;)V

    .line 38
    return-void
.end method
