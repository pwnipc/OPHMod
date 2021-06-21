.class Lcom/begal/appclone/classes/ApplicationWrapper$2;
.super Ljava/lang/Object;
.source "ApplicationWrapper.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/begal/appclone/classes/ApplicationWrapper;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/begal/appclone/classes/ApplicationWrapper;

.field final synthetic val$componentCallbacksField:Ljava/lang/reflect/Field;


# direct methods
.method constructor <init>(Lcom/begal/appclone/classes/ApplicationWrapper;Ljava/lang/reflect/Field;)V
    .registers 3
    .param p1, "this$0"    # Lcom/begal/appclone/classes/ApplicationWrapper;

    .line 78
    iput-object p1, p0, Lcom/begal/appclone/classes/ApplicationWrapper$2;->this$0:Lcom/begal/appclone/classes/ApplicationWrapper;

    iput-object p2, p0, Lcom/begal/appclone/classes/ApplicationWrapper$2;->val$componentCallbacksField:Ljava/lang/reflect/Field;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/begal/appclone/classes/ApplicationWrapper$2;->val$componentCallbacksField:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/begal/appclone/classes/ApplicationWrapper$2;->this$0:Lcom/begal/appclone/classes/ApplicationWrapper;

    .line 85
    # getter for: Lcom/begal/appclone/classes/ApplicationWrapper;->mBaseApp:Landroid/app/Application;
    invoke-static {v1}, Lcom/begal/appclone/classes/ApplicationWrapper;->access$000(Lcom/begal/appclone/classes/ApplicationWrapper;)Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 86
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/ComponentCallbacks;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentCallbacks;

    .line 87
    .local v2, "componentCallbacks":Landroid/content/ComponentCallbacks;
    invoke-interface {v2, p1}, Landroid/content/ComponentCallbacks;->onConfigurationChanged(Landroid/content/res/Configuration;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_23

    .line 88
    .end local v2    # "componentCallbacks":Landroid/content/ComponentCallbacks;
    goto :goto_12

    .line 91
    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/ComponentCallbacks;>;"
    :cond_22
    goto :goto_2b

    .line 89
    :catch_23
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/begal/appclone/classes/ApplicationWrapper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/ApplicationWrapper;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2b
    return-void
.end method

.method public onLowMemory()V
    .registers 4

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/begal/appclone/classes/ApplicationWrapper$2;->val$componentCallbacksField:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/begal/appclone/classes/ApplicationWrapper$2;->this$0:Lcom/begal/appclone/classes/ApplicationWrapper;

    .line 99
    # getter for: Lcom/begal/appclone/classes/ApplicationWrapper;->mBaseApp:Landroid/app/Application;
    invoke-static {v1}, Lcom/begal/appclone/classes/ApplicationWrapper;->access$000(Lcom/begal/appclone/classes/ApplicationWrapper;)Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 100
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/ComponentCallbacks;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentCallbacks;

    .line 101
    .local v2, "callbacks":Landroid/content/ComponentCallbacks;
    invoke-interface {v2}, Landroid/content/ComponentCallbacks;->onLowMemory()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_23

    .line 102
    .end local v2    # "callbacks":Landroid/content/ComponentCallbacks;
    goto :goto_12

    .line 105
    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/ComponentCallbacks;>;"
    :cond_22
    goto :goto_2b

    .line 103
    :catch_23
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/begal/appclone/classes/ApplicationWrapper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/ApplicationWrapper;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2b
    return-void
.end method
