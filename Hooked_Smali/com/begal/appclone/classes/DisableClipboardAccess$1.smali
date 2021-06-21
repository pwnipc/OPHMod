.class Lcom/begal/appclone/classes/DisableClipboardAccess$1;
.super Ljava/lang/Object;
.source "DisableClipboardAccess.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/begal/appclone/classes/DisableClipboardAccess;->installClipboardManagerHook(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/begal/appclone/classes/DisableClipboardAccess;

.field final synthetic val$clipboardManager:Landroid/content/ClipboardManager;

.field final synthetic val$originalService:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/begal/appclone/classes/DisableClipboardAccess;Landroid/content/ClipboardManager;Ljava/lang/Object;)V
    .registers 4
    .param p1, "this$0"    # Lcom/begal/appclone/classes/DisableClipboardAccess;

    .line 121
    iput-object p1, p0, Lcom/begal/appclone/classes/DisableClipboardAccess$1;->this$0:Lcom/begal/appclone/classes/DisableClipboardAccess;

    iput-object p2, p0, Lcom/begal/appclone/classes/DisableClipboardAccess$1;->val$clipboardManager:Landroid/content/ClipboardManager;

    iput-object p3, p0, Lcom/begal/appclone/classes/DisableClipboardAccess$1;->val$originalService:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/begal/appclone/classes/DisableClipboardAccess$1;->this$0:Lcom/begal/appclone/classes/DisableClipboardAccess;

    # getter for: Lcom/begal/appclone/classes/DisableClipboardAccess;->mPrivateClipboard:Z
    invoke-static {v0}, Lcom/begal/appclone/classes/DisableClipboardAccess;->access$000(Lcom/begal/appclone/classes/DisableClipboardAccess;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_15c

    .line 127
    const-string v0, "hasClipboardText"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2f

    .line 128
    # getter for: Lcom/begal/appclone/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/DisableClipboardAccess;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "invoke; hasClipboardText; "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/begal/appclone/classes/DisableClipboardAccess$1;->this$0:Lcom/begal/appclone/classes/DisableClipboardAccess;

    # getter for: Lcom/begal/appclone/classes/DisableClipboardAccess;->mClipData:Landroid/content/ClipData;
    invoke-static {v0}, Lcom/begal/appclone/classes/DisableClipboardAccess;->access$200(Lcom/begal/appclone/classes/DisableClipboardAccess;)Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_2a

    const/4 v2, 0x1

    nop

    :cond_2a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 131
    :cond_2f
    const-string v0, "hasPrimaryClip"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 132
    # getter for: Lcom/begal/appclone/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/DisableClipboardAccess;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "invoke; hasPrimaryClip; "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/begal/appclone/classes/DisableClipboardAccess$1;->this$0:Lcom/begal/appclone/classes/DisableClipboardAccess;

    # getter for: Lcom/begal/appclone/classes/DisableClipboardAccess;->mClipData:Landroid/content/ClipData;
    invoke-static {v0}, Lcom/begal/appclone/classes/DisableClipboardAccess;->access$200(Lcom/begal/appclone/classes/DisableClipboardAccess;)Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_4e

    const/4 v2, 0x1

    nop

    :cond_4e
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 135
    :cond_53
    const-string v0, "getPrimaryClipDescription"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 136
    # getter for: Lcom/begal/appclone/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/DisableClipboardAccess;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "invoke; getPrimaryClipDescription; "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/begal/appclone/classes/DisableClipboardAccess$1;->this$0:Lcom/begal/appclone/classes/DisableClipboardAccess;

    # getter for: Lcom/begal/appclone/classes/DisableClipboardAccess;->mClipData:Landroid/content/ClipData;
    invoke-static {v0}, Lcom/begal/appclone/classes/DisableClipboardAccess;->access$200(Lcom/begal/appclone/classes/DisableClipboardAccess;)Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_7f

    .line 138
    iget-object v0, p0, Lcom/begal/appclone/classes/DisableClipboardAccess$1;->this$0:Lcom/begal/appclone/classes/DisableClipboardAccess;

    # getter for: Lcom/begal/appclone/classes/DisableClipboardAccess;->mClipData:Landroid/content/ClipData;
    invoke-static {v0}, Lcom/begal/appclone/classes/DisableClipboardAccess;->access$200(Lcom/begal/appclone/classes/DisableClipboardAccess;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    # invokes: Lcom/begal/appclone/classes/DisableClipboardAccess;->cloneParcelable(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    invoke-static {v0}, Lcom/begal/appclone/classes/DisableClipboardAccess;->access$300(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0

    .line 140
    :cond_7f
    new-instance v0, Landroid/content/ClipDescription;

    const-string v1, ""

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    return-object v0

    .line 143
    :cond_89
    const-string v0, "getPrimaryClip"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 144
    # getter for: Lcom/begal/appclone/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/DisableClipboardAccess;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "invoke; getPrimaryClip; "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/begal/appclone/classes/DisableClipboardAccess$1;->this$0:Lcom/begal/appclone/classes/DisableClipboardAccess;

    # getter for: Lcom/begal/appclone/classes/DisableClipboardAccess;->mClipData:Landroid/content/ClipData;
    invoke-static {v0}, Lcom/begal/appclone/classes/DisableClipboardAccess;->access$200(Lcom/begal/appclone/classes/DisableClipboardAccess;)Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_b1

    .line 146
    iget-object v0, p0, Lcom/begal/appclone/classes/DisableClipboardAccess$1;->this$0:Lcom/begal/appclone/classes/DisableClipboardAccess;

    # getter for: Lcom/begal/appclone/classes/DisableClipboardAccess;->mClipData:Landroid/content/ClipData;
    invoke-static {v0}, Lcom/begal/appclone/classes/DisableClipboardAccess;->access$200(Lcom/begal/appclone/classes/DisableClipboardAccess;)Landroid/content/ClipData;

    move-result-object v0

    # invokes: Lcom/begal/appclone/classes/DisableClipboardAccess;->cloneParcelable(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    invoke-static {v0}, Lcom/begal/appclone/classes/DisableClipboardAccess;->access$300(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0

    .line 148
    :cond_b1
    new-instance v0, Landroid/content/ClipData;

    const-string v1, ""

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Landroid/content/ClipData$Item;

    const-string v4, ""

    invoke-direct {v3, v4}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {v0, v1, v2, v3}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    return-object v0

    .line 151
    :cond_c2
    const-string v0, "addPrimaryClipChangedListener"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e5

    .line 152
    # getter for: Lcom/begal/appclone/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/DisableClipboardAccess;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v3, "invoke; addPrimaryClipChangedListener; "

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    aget-object v0, p3, v2

    check-cast v0, Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    .line 155
    .local v0, "listener":Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;
    iget-object v2, p0, Lcom/begal/appclone/classes/DisableClipboardAccess$1;->this$0:Lcom/begal/appclone/classes/DisableClipboardAccess;

    # getter for: Lcom/begal/appclone/classes/DisableClipboardAccess;->mListeners:Ljava/util/List;
    invoke-static {v2}, Lcom/begal/appclone/classes/DisableClipboardAccess;->access$400(Lcom/begal/appclone/classes/DisableClipboardAccess;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    return-object v1

    .line 158
    .end local v0    # "listener":Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;
    :cond_e5
    const-string v0, "removePrimaryClipChangedListener"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_108

    .line 159
    # getter for: Lcom/begal/appclone/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/DisableClipboardAccess;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v3, "invoke; removePrimaryClipChangedListener; "

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    aget-object v0, p3, v2

    check-cast v0, Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    .line 162
    .restart local v0    # "listener":Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;
    iget-object v2, p0, Lcom/begal/appclone/classes/DisableClipboardAccess$1;->this$0:Lcom/begal/appclone/classes/DisableClipboardAccess;

    # getter for: Lcom/begal/appclone/classes/DisableClipboardAccess;->mListeners:Ljava/util/List;
    invoke-static {v2}, Lcom/begal/appclone/classes/DisableClipboardAccess;->access$400(Lcom/begal/appclone/classes/DisableClipboardAccess;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 163
    return-object v1

    .line 165
    .end local v0    # "listener":Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;
    :cond_108
    const-string v0, "setPrimaryClip"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15c

    .line 166
    # getter for: Lcom/begal/appclone/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/DisableClipboardAccess;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v3, "invoke; setPrimaryClip; "

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    aget-object v0, p3, v2

    check-cast v0, Landroid/content/ClipData;

    .line 168
    .local v0, "clipData":Landroid/content/ClipData;
    iget-object v2, p0, Lcom/begal/appclone/classes/DisableClipboardAccess$1;->this$0:Lcom/begal/appclone/classes/DisableClipboardAccess;

    # invokes: Lcom/begal/appclone/classes/DisableClipboardAccess;->cloneParcelable(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    invoke-static {v0}, Lcom/begal/appclone/classes/DisableClipboardAccess;->access$300(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/ClipData;

    # setter for: Lcom/begal/appclone/classes/DisableClipboardAccess;->mClipData:Landroid/content/ClipData;
    invoke-static {v2, v3}, Lcom/begal/appclone/classes/DisableClipboardAccess;->access$202(Lcom/begal/appclone/classes/DisableClipboardAccess;Landroid/content/ClipData;)Landroid/content/ClipData;

    .line 169
    iget-object v2, p0, Lcom/begal/appclone/classes/DisableClipboardAccess$1;->this$0:Lcom/begal/appclone/classes/DisableClipboardAccess;

    # invokes: Lcom/begal/appclone/classes/DisableClipboardAccess;->saveClipboardIfPersistent()V
    invoke-static {v2}, Lcom/begal/appclone/classes/DisableClipboardAccess;->access$500(Lcom/begal/appclone/classes/DisableClipboardAccess;)V

    .line 170
    iget-object v2, p0, Lcom/begal/appclone/classes/DisableClipboardAccess$1;->this$0:Lcom/begal/appclone/classes/DisableClipboardAccess;

    # getter for: Lcom/begal/appclone/classes/DisableClipboardAccess;->mListeners:Ljava/util/List;
    invoke-static {v2}, Lcom/begal/appclone/classes/DisableClipboardAccess;->access$400(Lcom/begal/appclone/classes/DisableClipboardAccess;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_154

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    .line 172
    .local v3, "listener":Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;
    :try_start_147
    invoke-interface {v3}, Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;->onPrimaryClipChanged()V
    :try_end_14a
    .catch Ljava/lang/Exception; {:try_start_147 .. :try_end_14a} :catch_14b

    .line 175
    goto :goto_153

    .line 173
    :catch_14b
    move-exception v4

    .line 174
    .local v4, "e":Ljava/lang/Exception;
    # getter for: Lcom/begal/appclone/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/DisableClipboardAccess;->access$100()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    .end local v3    # "listener":Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_153
    goto :goto_13b

    .line 177
    :cond_154
    iget-object v2, p0, Lcom/begal/appclone/classes/DisableClipboardAccess$1;->this$0:Lcom/begal/appclone/classes/DisableClipboardAccess;

    iget-object v3, p0, Lcom/begal/appclone/classes/DisableClipboardAccess$1;->val$clipboardManager:Landroid/content/ClipboardManager;

    # invokes: Lcom/begal/appclone/classes/DisableClipboardAccess;->startClipboardTimeout(Landroid/content/ClipboardManager;Landroid/content/ClipData;)V
    invoke-static {v2, v3, v0}, Lcom/begal/appclone/classes/DisableClipboardAccess;->access$600(Lcom/begal/appclone/classes/DisableClipboardAccess;Landroid/content/ClipboardManager;Landroid/content/ClipData;)V

    .line 178
    return-object v1

    .line 182
    .end local v0    # "clipData":Landroid/content/ClipData;
    :cond_15c
    iget-object v0, p0, Lcom/begal/appclone/classes/DisableClipboardAccess$1;->this$0:Lcom/begal/appclone/classes/DisableClipboardAccess;

    # getter for: Lcom/begal/appclone/classes/DisableClipboardAccess;->mDisableClipboardReadAccess:Z
    invoke-static {v0}, Lcom/begal/appclone/classes/DisableClipboardAccess;->access$700(Lcom/begal/appclone/classes/DisableClipboardAccess;)Z

    move-result v0

    if-eqz v0, :cond_1f9

    .line 183
    const-string v0, "hasClipboardText"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17e

    .line 184
    # getter for: Lcom/begal/appclone/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/DisableClipboardAccess;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "invoke; hasClipboardText; disabled clipboard read access"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 187
    :cond_17e
    const-string v0, "hasPrimaryClip"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_198

    .line 188
    # getter for: Lcom/begal/appclone/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/DisableClipboardAccess;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "invoke; hasPrimaryClip; disabled clipboard read access"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 191
    :cond_198
    const-string v0, "getPrimaryClipDescription"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b7

    .line 192
    # getter for: Lcom/begal/appclone/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/DisableClipboardAccess;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "invoke; getPrimaryClipDescription; disabled clipboard read access"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    new-instance v0, Landroid/content/ClipDescription;

    const-string v1, ""

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    return-object v0

    .line 195
    :cond_1b7
    const-string v0, "getPrimaryClip"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1cd

    .line 196
    # getter for: Lcom/begal/appclone/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/DisableClipboardAccess;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "invoke; getPrimaryClip; disabled clipboard read access"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return-object v1

    .line 199
    :cond_1cd
    const-string v0, "addPrimaryClipChangedListener"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e3

    .line 200
    # getter for: Lcom/begal/appclone/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/DisableClipboardAccess;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "invoke; addPrimaryClipChangedListener; disabled clipboard read access"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-object v1

    .line 203
    :cond_1e3
    const-string v0, "removePrimaryClipChangedListener"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f9

    .line 204
    # getter for: Lcom/begal/appclone/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/DisableClipboardAccess;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "invoke; removePrimaryClipChangedListener; disabled clipboard read access"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    return-object v1

    .line 209
    :cond_1f9
    iget-object v0, p0, Lcom/begal/appclone/classes/DisableClipboardAccess$1;->this$0:Lcom/begal/appclone/classes/DisableClipboardAccess;

    # getter for: Lcom/begal/appclone/classes/DisableClipboardAccess;->mDisableClipboardWriteAccess:Z
    invoke-static {v0}, Lcom/begal/appclone/classes/DisableClipboardAccess;->access$800(Lcom/begal/appclone/classes/DisableClipboardAccess;)Z

    move-result v0

    if-eqz v0, :cond_217

    .line 210
    const-string v0, "setPrimaryClip"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_236

    .line 211
    # getter for: Lcom/begal/appclone/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/DisableClipboardAccess;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "invoke; setPrimaryClip; disabled clipboard write access"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return-object v1

    .line 214
    :cond_217
    iget-object v0, p0, Lcom/begal/appclone/classes/DisableClipboardAccess$1;->this$0:Lcom/begal/appclone/classes/DisableClipboardAccess;

    # getter for: Lcom/begal/appclone/classes/DisableClipboardAccess;->mClipboardTimeout:Z
    invoke-static {v0}, Lcom/begal/appclone/classes/DisableClipboardAccess;->access$900(Lcom/begal/appclone/classes/DisableClipboardAccess;)Z

    move-result v0

    if-eqz v0, :cond_236

    .line 215
    const-string v0, "setPrimaryClip"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_236

    .line 216
    aget-object v0, p3, v2

    check-cast v0, Landroid/content/ClipData;

    .line 217
    .restart local v0    # "clipData":Landroid/content/ClipData;
    iget-object v1, p0, Lcom/begal/appclone/classes/DisableClipboardAccess$1;->this$0:Lcom/begal/appclone/classes/DisableClipboardAccess;

    iget-object v2, p0, Lcom/begal/appclone/classes/DisableClipboardAccess$1;->val$clipboardManager:Landroid/content/ClipboardManager;

    # invokes: Lcom/begal/appclone/classes/DisableClipboardAccess;->startClipboardTimeout(Landroid/content/ClipboardManager;Landroid/content/ClipData;)V
    invoke-static {v1, v2, v0}, Lcom/begal/appclone/classes/DisableClipboardAccess;->access$600(Lcom/begal/appclone/classes/DisableClipboardAccess;Landroid/content/ClipboardManager;Landroid/content/ClipData;)V

    .line 221
    .end local v0    # "clipData":Landroid/content/ClipData;
    :cond_236
    iget-object v0, p0, Lcom/begal/appclone/classes/DisableClipboardAccess$1;->val$originalService:Ljava/lang/Object;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
