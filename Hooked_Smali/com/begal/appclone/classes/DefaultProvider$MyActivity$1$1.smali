.class Lcom/begal/appclone/classes/DefaultProvider$MyActivity$1$1;
.super Ljava/lang/Object;
.source "DefaultProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/begal/appclone/classes/DefaultProvider$MyActivity$1;->onDismiss(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/begal/appclone/classes/DefaultProvider$MyActivity$1;


# direct methods
.method constructor <init>(Lcom/begal/appclone/classes/DefaultProvider$MyActivity$1;)V
    .registers 2
    .param p1, "this$1"    # Lcom/begal/appclone/classes/DefaultProvider$MyActivity$1;

    .line 1105
    iput-object p1, p0, Lcom/begal/appclone/classes/DefaultProvider$MyActivity$1$1;->this$1:Lcom/begal/appclone/classes/DefaultProvider$MyActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1110
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "amF2YS5sYW5nLlN5c3RlbQ=="

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    const-string v3, "ZXhpdA=="

    .line 1111
    invoke-static {v3, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_33

    .line 1114
    goto :goto_3b

    .line 1112
    :catch_33
    move-exception v0

    .line 1113
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/begal/appclone/classes/DefaultProvider;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/DefaultProvider;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1115
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3b
    return-void
.end method
