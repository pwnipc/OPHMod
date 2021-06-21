.class public Lcom/begal/appclone/classes/AutoPressButtons;
.super Lcom/begal/appclone/classes/OnAppExitListener;
.source "AutoPressButtons.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/begal/appclone/classes/AutoPressButtons$TextViewFinder;,
        Lcom/begal/appclone/classes/AutoPressButtons$ButtonViewFinder;,
        Lcom/begal/appclone/classes/AutoPressButtons$ViewFinder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAutoPressButtons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mReady:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    const-class v0, Lcom/begal/appclone/classes/AutoPressButtons;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/begal/appclone/classes/AutoPressButtons;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/begal/appclone/classes/CloneSettings;)V
    .registers 12
    .param p1, "cloneSettings"    # Lcom/begal/appclone/classes/CloneSettings;

    .line 38
    invoke-direct {p0}, Lcom/begal/appclone/classes/OnAppExitListener;-><init>()V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/begal/appclone/classes/AutoPressButtons;->mHandler:Landroid/os/Handler;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/begal/appclone/classes/AutoPressButtons;->mAutoPressButtons:Ljava/util/Map;

    .line 40
    const-string v0, "autoPressButtons"

    invoke-virtual {p1, v0}, Lcom/begal/appclone/classes/CloneSettings;->forObjectArray(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 41
    .local v0, "autoPressButtons":Ljava/util/List;, "Ljava/util/List<Lcom/begal/appclone/classes/CloneSettings;>;"
    sget-object v1, Lcom/begal/appclone/classes/AutoPressButtons;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AutoPressButtons; autoPressButtons: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    if-eqz v0, :cond_83

    .line 44
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_83

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/begal/appclone/classes/CloneSettings;

    .line 45
    .local v2, "autoPressButton":Lcom/begal/appclone/classes/CloneSettings;
    const-string v3, "buttonLabel"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, "buttonLabel":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_82

    .line 47
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 48
    const-string v5, "screenText"

    invoke-virtual {v2, v5, v4}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 49
    .local v5, "screenText":Ljava/lang/String;
    if-eqz v5, :cond_60

    .line 50
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 52
    :cond_60
    const-string v6, "pressOnceOnly"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 53
    .local v6, "pressOnceOnly":Z
    iget-object v7, p0, Lcom/begal/appclone/classes/AutoPressButtons;->mAutoPressButtons:Ljava/util/Map;

    new-instance v8, Landroid/util/Pair;

    if-eqz v6, :cond_7c

    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v9, 0x1

    invoke-direct {v4, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    nop

    :cond_7c
    invoke-direct {v8, v5, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v7, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .end local v2    # "autoPressButton":Lcom/begal/appclone/classes/CloneSettings;
    .end local v3    # "buttonLabel":Ljava/lang/String;
    .end local v5    # "screenText":Ljava/lang/String;
    .end local v6    # "pressOnceOnly":Z
    :cond_82
    goto :goto_33

    .line 58
    :cond_83
    sget-object v1, Lcom/begal/appclone/classes/AutoPressButtons;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AutoPressButtons; mAutoPressButtons: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/begal/appclone/classes/AutoPressButtons;->mAutoPressButtons:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 29
    sget-object v0, Lcom/begal/appclone/classes/AutoPressButtons;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/begal/appclone/classes/AutoPressButtons;)V
    .registers 1
    .param p0, "x0"    # Lcom/begal/appclone/classes/AutoPressButtons;

    .line 29
    invoke-direct {p0}, Lcom/begal/appclone/classes/AutoPressButtons;->checkForButtons()V

    return-void
.end method

.method static synthetic access$202(Lcom/begal/appclone/classes/AutoPressButtons;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/AutoPressButtons;
    .param p1, "x1"    # Z

    .line 29
    iput-boolean p1, p0, Lcom/begal/appclone/classes/AutoPressButtons;->mReady:Z

    return p1
.end method

.method static synthetic access$300(Lcom/begal/appclone/classes/AutoPressButtons;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/AutoPressButtons;

    .line 29
    iget-object v0, p0, Lcom/begal/appclone/classes/AutoPressButtons;->mAutoPressButtons:Ljava/util/Map;

    return-object v0
.end method

.method private declared-synchronized checkForButtons()V
    .registers 10

    monitor-enter p0

    .line 124
    :try_start_1
    iget-boolean v0, p0, Lcom/begal/appclone/classes/AutoPressButtons;->mReady:Z

    if-nez v0, :cond_e

    .line 125
    sget-object v0, Lcom/begal/appclone/classes/AutoPressButtons;->TAG:Ljava/lang/String;

    const-string v1, "checkForButtons; not ready"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_67

    .line 126
    monitor-exit p0

    return-void

    .line 130
    :cond_e
    :try_start_e
    invoke-static {}, Lcom/begal/appclone/classes/Utils;->getViewRoots()Ljava/util/List;

    move-result-object v0

    .line 131
    .local v0, "viewRoots":Ljava/util/List;, "Ljava/util/List<Landroid/view/ViewParent;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewParent;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_22} :catch_5f
    .catchall {:try_start_e .. :try_end_22} :catchall_67

    .line 133
    .local v2, "viewRoot":Landroid/view/ViewParent;
    :try_start_22
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mView"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 134
    .local v3, "f":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 135
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 141
    .local v4, "view":Landroid/view/View;
    new-instance v5, Lcom/begal/appclone/classes/AutoPressButtons$ButtonViewFinder;

    invoke-direct {v5, p0, v4}, Lcom/begal/appclone/classes/AutoPressButtons$ButtonViewFinder;-><init>(Lcom/begal/appclone/classes/AutoPressButtons;Landroid/view/View;)V

    .line 142
    .local v5, "buttonViewFinder":Lcom/begal/appclone/classes/AutoPressButtons$ButtonViewFinder;
    invoke-virtual {v5}, Lcom/begal/appclone/classes/AutoPressButtons$ButtonViewFinder;->findView()Landroid/view/View;

    move-result-object v6

    .line 143
    .local v6, "button":Landroid/view/View;
    if-eqz v6, :cond_56

    .line 144
    invoke-virtual {v6}, Landroid/view/View;->callOnClick()Z

    move-result v7

    if-eqz v7, :cond_4f

    .line 145
    sget-object v7, Lcom/begal/appclone/classes/AutoPressButtons;->TAG:Ljava/lang/String;

    const-string v8, "checkForButtons; button clicked"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    .line 147
    :cond_4f
    sget-object v7, Lcom/begal/appclone/classes/AutoPressButtons;->TAG:Ljava/lang/String;

    const-string v8, "checkForButtons; button not clicked"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_56} :catch_57
    .catchall {:try_start_22 .. :try_end_56} :catchall_67

    .line 153
    .end local v3    # "f":Ljava/lang/reflect/Field;
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "buttonViewFinder":Lcom/begal/appclone/classes/AutoPressButtons$ButtonViewFinder;
    .end local v6    # "button":Landroid/view/View;
    :cond_56
    :goto_56
    goto :goto_5d

    .line 151
    :catch_57
    move-exception v3

    .line 152
    .local v3, "e":Ljava/lang/Exception;
    :try_start_58
    sget-object v4, Lcom/begal/appclone/classes/AutoPressButtons;->TAG:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5d} :catch_5f
    .catchall {:try_start_58 .. :try_end_5d} :catchall_67

    .line 154
    .end local v2    # "viewRoot":Landroid/view/ViewParent;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_5d
    goto :goto_16

    .line 157
    .end local v0    # "viewRoots":Ljava/util/List;, "Ljava/util/List<Landroid/view/ViewParent;>;"
    :cond_5e
    goto :goto_65

    .line 155
    :catch_5f
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/Exception;
    :try_start_60
    sget-object v1, Lcom/begal/appclone/classes/AutoPressButtons;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_65
    .catchall {:try_start_60 .. :try_end_65} :catchall_67

    .line 158
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_65
    monitor-exit p0

    return-void

    .line 123
    :catchall_67
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected getActivityTimerDelayMillis()I
    .registers 2

    .line 98
    const/16 v0, 0x1f4

    return v0
.end method

.method init(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 63
    iget-object v0, p0, Lcom/begal/appclone/classes/AutoPressButtons;->mAutoPressButtons:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 64
    invoke-virtual {p0}, Lcom/begal/appclone/classes/AutoPressButtons;->onCreate()Z

    .line 66
    :cond_b
    return-void
.end method

.method protected onActivityCreated(Landroid/app/Activity;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;

    .line 70
    invoke-super {p0, p1}, Lcom/begal/appclone/classes/OnAppExitListener;->onActivityCreated(Landroid/app/Activity;)V

    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_15

    .line 73
    iget-object v0, p0, Lcom/begal/appclone/classes/AutoPressButtons;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/begal/appclone/classes/AutoPressButtons$1;

    invoke-direct {v1, p0, p1}, Lcom/begal/appclone/classes/AutoPressButtons$1;-><init>(Lcom/begal/appclone/classes/AutoPressButtons;Landroid/app/Activity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 94
    :cond_15
    return-void
.end method

.method protected onActivityTimer(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 103
    invoke-direct {p0}, Lcom/begal/appclone/classes/AutoPressButtons;->checkForButtons()V

    .line 104
    return-void
.end method

.method protected onAppExit(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 108
    sget-object v0, Lcom/begal/appclone/classes/AutoPressButtons;->TAG:Ljava/lang/String;

    const-string v1, "onAppExit; "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v0, 0x0

    :try_start_8
    iput-boolean v0, p0, Lcom/begal/appclone/classes/AutoPressButtons;->mReady:Z

    .line 112
    iget-object v0, p0, Lcom/begal/appclone/classes/AutoPressButtons;->mAutoPressButtons:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 113
    .local v1, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;>;"
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v2, :cond_2c

    .line 114
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2c} :catch_2e

    .line 116
    .end local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;>;"
    :cond_2c
    goto :goto_14

    .line 119
    :cond_2d
    goto :goto_34

    .line 117
    :catch_2e
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/begal/appclone/classes/AutoPressButtons;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_34
    return-void
.end method
