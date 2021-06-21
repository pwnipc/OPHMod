.class Lcom/begal/appclone/classes/ApplicationWrapper$3;
.super Ljava/lang/Object;
.source "ApplicationWrapper.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


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

.field final synthetic val$activityLifecycleCallbacksField:Ljava/lang/reflect/Field;

.field final synthetic val$baseField:Ljava/lang/reflect/Field;

.field final synthetic val$finalBaseContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/begal/appclone/classes/ApplicationWrapper;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Landroid/content/Context;)V
    .registers 5
    .param p1, "this$0"    # Lcom/begal/appclone/classes/ApplicationWrapper;

    .line 117
    iput-object p1, p0, Lcom/begal/appclone/classes/ApplicationWrapper$3;->this$0:Lcom/begal/appclone/classes/ApplicationWrapper;

    iput-object p2, p0, Lcom/begal/appclone/classes/ApplicationWrapper$3;->val$activityLifecycleCallbacksField:Ljava/lang/reflect/Field;

    iput-object p3, p0, Lcom/begal/appclone/classes/ApplicationWrapper$3;->val$baseField:Ljava/lang/reflect/Field;

    iput-object p4, p0, Lcom/begal/appclone/classes/ApplicationWrapper$3;->val$finalBaseContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/begal/appclone/classes/ApplicationWrapper$3;->val$activityLifecycleCallbacksField:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/begal/appclone/classes/ApplicationWrapper$3;->this$0:Lcom/begal/appclone/classes/ApplicationWrapper;

    .line 124
    # getter for: Lcom/begal/appclone/classes/ApplicationWrapper;->mBaseApp:Landroid/app/Application;
    invoke-static {v1}, Lcom/begal/appclone/classes/ApplicationWrapper;->access$000(Lcom/begal/appclone/classes/ApplicationWrapper;)Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 125
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/app/Application$ActivityLifecycleCallbacks;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 126
    .local v2, "callbacks":Landroid/app/Application$ActivityLifecycleCallbacks;
    invoke-interface {v2, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 127
    .end local v2    # "callbacks":Landroid/app/Application$ActivityLifecycleCallbacks;
    goto :goto_12

    .line 131
    :cond_22
    iget-object v1, p0, Lcom/begal/appclone/classes/ApplicationWrapper$3;->val$baseField:Ljava/lang/reflect/Field;

    iget-object v2, p0, Lcom/begal/appclone/classes/ApplicationWrapper$3;->val$finalBaseContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2a

    .line 135
    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/app/Application$ActivityLifecycleCallbacks;>;"
    goto :goto_32

    .line 133
    :catch_2a
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/begal/appclone/classes/ApplicationWrapper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/ApplicationWrapper;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_32
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/begal/appclone/classes/ApplicationWrapper$3;->val$activityLifecycleCallbacksField:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/begal/appclone/classes/ApplicationWrapper$3;->this$0:Lcom/begal/appclone/classes/ApplicationWrapper;

    .line 213
    # getter for: Lcom/begal/appclone/classes/ApplicationWrapper;->mBaseApp:Landroid/app/Application;
    invoke-static {v1}, Lcom/begal/appclone/classes/ApplicationWrapper;->access$000(Lcom/begal/appclone/classes/ApplicationWrapper;)Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 214
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/app/Application$ActivityLifecycleCallbacks;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 215
    .local v2, "callbacks":Landroid/app/Application$ActivityLifecycleCallbacks;
    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityDestroyed(Landroid/app/Activity;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_23

    .line 216
    .end local v2    # "callbacks":Landroid/app/Application$ActivityLifecycleCallbacks;
    goto :goto_12

    .line 219
    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/app/Application$ActivityLifecycleCallbacks;>;"
    :cond_22
    goto :goto_2b

    .line 217
    :catch_23
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/begal/appclone/classes/ApplicationWrapper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/ApplicationWrapper;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 220
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2b
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/begal/appclone/classes/ApplicationWrapper$3;->val$activityLifecycleCallbacksField:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/begal/appclone/classes/ApplicationWrapper$3;->this$0:Lcom/begal/appclone/classes/ApplicationWrapper;

    .line 171
    # getter for: Lcom/begal/appclone/classes/ApplicationWrapper;->mBaseApp:Landroid/app/Application;
    invoke-static {v1}, Lcom/begal/appclone/classes/ApplicationWrapper;->access$000(Lcom/begal/appclone/classes/ApplicationWrapper;)Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 172
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/app/Application$ActivityLifecycleCallbacks;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 173
    .local v2, "callbacks":Landroid/app/Application$ActivityLifecycleCallbacks;
    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPaused(Landroid/app/Activity;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_23

    .line 174
    .end local v2    # "callbacks":Landroid/app/Application$ActivityLifecycleCallbacks;
    goto :goto_12

    .line 177
    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/app/Application$ActivityLifecycleCallbacks;>;"
    :cond_22
    goto :goto_2b

    .line 175
    :catch_23
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/begal/appclone/classes/ApplicationWrapper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/ApplicationWrapper;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2b
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/begal/appclone/classes/ApplicationWrapper$3;->val$activityLifecycleCallbacksField:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/begal/appclone/classes/ApplicationWrapper$3;->this$0:Lcom/begal/appclone/classes/ApplicationWrapper;

    .line 157
    # getter for: Lcom/begal/appclone/classes/ApplicationWrapper;->mBaseApp:Landroid/app/Application;
    invoke-static {v1}, Lcom/begal/appclone/classes/ApplicationWrapper;->access$000(Lcom/begal/appclone/classes/ApplicationWrapper;)Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 158
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/app/Application$ActivityLifecycleCallbacks;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 159
    .local v2, "callbacks":Landroid/app/Application$ActivityLifecycleCallbacks;
    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_23

    .line 160
    .end local v2    # "callbacks":Landroid/app/Application$ActivityLifecycleCallbacks;
    goto :goto_12

    .line 163
    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/app/Application$ActivityLifecycleCallbacks;>;"
    :cond_22
    goto :goto_2b

    .line 161
    :catch_23
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/begal/appclone/classes/ApplicationWrapper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/ApplicationWrapper;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2b
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/begal/appclone/classes/ApplicationWrapper$3;->val$activityLifecycleCallbacksField:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/begal/appclone/classes/ApplicationWrapper$3;->this$0:Lcom/begal/appclone/classes/ApplicationWrapper;

    .line 199
    # getter for: Lcom/begal/appclone/classes/ApplicationWrapper;->mBaseApp:Landroid/app/Application;
    invoke-static {v1}, Lcom/begal/appclone/classes/ApplicationWrapper;->access$000(Lcom/begal/appclone/classes/ApplicationWrapper;)Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 200
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/app/Application$ActivityLifecycleCallbacks;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 201
    .local v2, "callbacks":Landroid/app/Application$ActivityLifecycleCallbacks;
    invoke-interface {v2, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_23

    .line 202
    .end local v2    # "callbacks":Landroid/app/Application$ActivityLifecycleCallbacks;
    goto :goto_12

    .line 205
    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/app/Application$ActivityLifecycleCallbacks;>;"
    :cond_22
    goto :goto_2b

    .line 203
    :catch_23
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/begal/appclone/classes/ApplicationWrapper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/ApplicationWrapper;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2b
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/begal/appclone/classes/ApplicationWrapper$3;->val$activityLifecycleCallbacksField:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/begal/appclone/classes/ApplicationWrapper$3;->this$0:Lcom/begal/appclone/classes/ApplicationWrapper;

    .line 143
    # getter for: Lcom/begal/appclone/classes/ApplicationWrapper;->mBaseApp:Landroid/app/Application;
    invoke-static {v1}, Lcom/begal/appclone/classes/ApplicationWrapper;->access$000(Lcom/begal/appclone/classes/ApplicationWrapper;)Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 144
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/app/Application$ActivityLifecycleCallbacks;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 145
    .local v2, "callbacks":Landroid/app/Application$ActivityLifecycleCallbacks;
    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStarted(Landroid/app/Activity;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_23

    .line 146
    .end local v2    # "callbacks":Landroid/app/Application$ActivityLifecycleCallbacks;
    goto :goto_12

    .line 149
    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/app/Application$ActivityLifecycleCallbacks;>;"
    :cond_22
    goto :goto_2b

    .line 147
    :catch_23
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/begal/appclone/classes/ApplicationWrapper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/ApplicationWrapper;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2b
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/begal/appclone/classes/ApplicationWrapper$3;->val$activityLifecycleCallbacksField:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/begal/appclone/classes/ApplicationWrapper$3;->this$0:Lcom/begal/appclone/classes/ApplicationWrapper;

    .line 185
    # getter for: Lcom/begal/appclone/classes/ApplicationWrapper;->mBaseApp:Landroid/app/Application;
    invoke-static {v1}, Lcom/begal/appclone/classes/ApplicationWrapper;->access$000(Lcom/begal/appclone/classes/ApplicationWrapper;)Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 186
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/app/Application$ActivityLifecycleCallbacks;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 187
    .local v2, "callbacks":Landroid/app/Application$ActivityLifecycleCallbacks;
    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStopped(Landroid/app/Activity;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_23

    .line 188
    .end local v2    # "callbacks":Landroid/app/Application$ActivityLifecycleCallbacks;
    goto :goto_12

    .line 191
    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/app/Application$ActivityLifecycleCallbacks;>;"
    :cond_22
    goto :goto_2b

    .line 189
    :catch_23
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/begal/appclone/classes/ApplicationWrapper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/ApplicationWrapper;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2b
    return-void
.end method
