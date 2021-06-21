.class Lcom/begal/appclone/classes/ToastFilter$1;
.super Ljava/lang/Object;
.source "ToastFilter.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/begal/appclone/classes/ToastFilter;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/begal/appclone/classes/ToastFilter;

.field final synthetic val$originalService:Ljava/lang/Object;

.field final synthetic val$toastFilterSet:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/begal/appclone/classes/ToastFilter;Ljava/util/Set;Ljava/lang/Object;)V
    .registers 4
    .param p1, "this$0"    # Lcom/begal/appclone/classes/ToastFilter;

    .line 68
    iput-object p1, p0, Lcom/begal/appclone/classes/ToastFilter$1;->this$0:Lcom/begal/appclone/classes/ToastFilter;

    iput-object p2, p0, Lcom/begal/appclone/classes/ToastFilter$1;->val$toastFilterSet:Ljava/util/Set;

    iput-object p3, p0, Lcom/begal/appclone/classes/ToastFilter$1;->val$originalService:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getToastText(Ljava/lang/Object;)Ljava/lang/String;
    .registers 7
    .param p1, "arg1"    # Ljava/lang/Object;

    .line 94
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mNextView"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 95
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 97
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_2c

    .line 98
    const v2, 0x102000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 99
    .local v2, "textView":Landroid/widget/TextView;
    if-eqz v2, :cond_2c

    .line 100
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 101
    .local v3, "text":Ljava/lang/CharSequence;
    if-eqz v3, :cond_2c

    .line 102
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2d

    return-object v4

    .line 108
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "textView":Landroid/widget/TextView;
    .end local v3    # "text":Ljava/lang/CharSequence;
    :cond_2c
    goto :goto_35

    .line 106
    :catch_2d
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/begal/appclone/classes/ToastFilter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/ToastFilter;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_35
    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 72
    const-string v0, "enqueueToast"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 74
    iget-object v0, p0, Lcom/begal/appclone/classes/ToastFilter$1;->this$0:Lcom/begal/appclone/classes/ToastFilter;

    # getter for: Lcom/begal/appclone/classes/ToastFilter;->mBlockAllToasts:Z
    invoke-static {v0}, Lcom/begal/appclone/classes/ToastFilter;->access$000(Lcom/begal/appclone/classes/ToastFilter;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 75
    # getter for: Lcom/begal/appclone/classes/ToastFilter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/ToastFilter;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "invoke; enqueueToast blocked"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-object v1

    .line 79
    :cond_1f
    const/4 v0, 0x1

    aget-object v0, p3, v0

    invoke-direct {p0, v0}, Lcom/begal/appclone/classes/ToastFilter$1;->getToastText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "s":Ljava/lang/String;
    iget-object v2, p0, Lcom/begal/appclone/classes/ToastFilter$1;->val$toastFilterSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 81
    .local v3, "toastFilterString":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 82
    # getter for: Lcom/begal/appclone/classes/ToastFilter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/ToastFilter;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v4, "invoke; enqueueToast blocked"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-object v1

    .line 85
    .end local v3    # "toastFilterString":Ljava/lang/String;
    :cond_4e
    goto :goto_32

    .line 88
    .end local v0    # "s":Ljava/lang/String;
    :cond_4f
    iget-object v0, p0, Lcom/begal/appclone/classes/ToastFilter$1;->val$originalService:Ljava/lang/Object;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
