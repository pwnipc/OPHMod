.class Lcom/begal/appclone/classes/ApplicationWrapper$4;
.super Ljava/lang/Object;
.source "ApplicationWrapper.java"

# interfaces
.implements Landroid/app/Application$OnProvideAssistDataListener;


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

.field final synthetic val$assistCallbacksField:Ljava/lang/reflect/Field;


# direct methods
.method constructor <init>(Lcom/begal/appclone/classes/ApplicationWrapper;Ljava/lang/reflect/Field;)V
    .registers 3
    .param p1, "this$0"    # Lcom/begal/appclone/classes/ApplicationWrapper;

    .line 232
    iput-object p1, p0, Lcom/begal/appclone/classes/ApplicationWrapper$4;->this$0:Lcom/begal/appclone/classes/ApplicationWrapper;

    iput-object p2, p0, Lcom/begal/appclone/classes/ApplicationWrapper$4;->val$assistCallbacksField:Ljava/lang/reflect/Field;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProvideAssistData(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "data"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/begal/appclone/classes/ApplicationWrapper$4;->val$assistCallbacksField:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/begal/appclone/classes/ApplicationWrapper$4;->this$0:Lcom/begal/appclone/classes/ApplicationWrapper;

    .line 240
    # getter for: Lcom/begal/appclone/classes/ApplicationWrapper;->mBaseApp:Landroid/app/Application;
    invoke-static {v1}, Lcom/begal/appclone/classes/ApplicationWrapper;->access$000(Lcom/begal/appclone/classes/ApplicationWrapper;)Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 241
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/app/Application$OnProvideAssistDataListener;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Application$OnProvideAssistDataListener;

    .line 242
    .local v2, "listener":Landroid/app/Application$OnProvideAssistDataListener;
    invoke-interface {v2, p1, p2}, Landroid/app/Application$OnProvideAssistDataListener;->onProvideAssistData(Landroid/app/Activity;Landroid/os/Bundle;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_23

    .line 243
    .end local v2    # "listener":Landroid/app/Application$OnProvideAssistDataListener;
    goto :goto_12

    .line 246
    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/app/Application$OnProvideAssistDataListener;>;"
    :cond_22
    goto :goto_2b

    .line 244
    :catch_23
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/begal/appclone/classes/ApplicationWrapper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/ApplicationWrapper;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 247
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2b
    return-void
.end method
