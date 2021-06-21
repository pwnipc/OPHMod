.class Lcom/begal/appclone/classes/CrashHandler$2;
.super Ljava/lang/Object;
.source "CrashHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/begal/appclone/classes/CrashHandler;->install(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/begal/appclone/classes/CrashHandler;


# direct methods
.method constructor <init>(Lcom/begal/appclone/classes/CrashHandler;)V
    .registers 2
    .param p1, "this$0"    # Lcom/begal/appclone/classes/CrashHandler;

    .line 114
    iput-object p1, p0, Lcom/begal/appclone/classes/CrashHandler$2;->this$0:Lcom/begal/appclone/classes/CrashHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/begal/appclone/classes/CrashHandler$2;->this$0:Lcom/begal/appclone/classes/CrashHandler;

    # invokes: Lcom/begal/appclone/classes/CrashHandler;->installHandler()V
    invoke-static {v0}, Lcom/begal/appclone/classes/CrashHandler;->access$500(Lcom/begal/appclone/classes/CrashHandler;)V

    .line 118
    return-void
.end method
