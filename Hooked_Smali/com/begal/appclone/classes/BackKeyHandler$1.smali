.class Lcom/begal/appclone/classes/BackKeyHandler$1;
.super Lcom/begal/appclone/classes/util/IActivityManagerHook;
.source "BackKeyHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/begal/appclone/classes/BackKeyHandler;->onCreate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/begal/appclone/classes/BackKeyHandler;


# direct methods
.method constructor <init>(Lcom/begal/appclone/classes/BackKeyHandler;)V
    .registers 2
    .param p1, "this$0"    # Lcom/begal/appclone/classes/BackKeyHandler;

    .line 36
    iput-object p1, p0, Lcom/begal/appclone/classes/BackKeyHandler$1;->this$0:Lcom/begal/appclone/classes/BackKeyHandler;

    invoke-direct {p0}, Lcom/begal/appclone/classes/util/IActivityManagerHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;
    .registers 3
    .param p1, "originalActivityManager"    # Ljava/lang/Object;

    .line 39
    new-instance v0, Lcom/begal/appclone/classes/BackKeyHandler$1$1;

    invoke-direct {v0, p0, p1}, Lcom/begal/appclone/classes/BackKeyHandler$1$1;-><init>(Lcom/begal/appclone/classes/BackKeyHandler$1;Ljava/lang/Object;)V

    return-object v0
.end method
