.class Lcom/begal/appclone/classes/ApplicationWrapper$1;
.super Landroid/content/ContextWrapper;
.source "ApplicationWrapper.java"


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


# direct methods
.method constructor <init>(Lcom/begal/appclone/classes/ApplicationWrapper;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lcom/begal/appclone/classes/ApplicationWrapper;
    .param p2, "x0"    # Landroid/content/Context;

    .line 61
    iput-object p1, p0, Lcom/begal/appclone/classes/ApplicationWrapper$1;->this$0:Lcom/begal/appclone/classes/ApplicationWrapper;

    invoke-direct {p0, p2}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/begal/appclone/classes/ApplicationWrapper$1;->this$0:Lcom/begal/appclone/classes/ApplicationWrapper;

    # getter for: Lcom/begal/appclone/classes/ApplicationWrapper;->mBaseApp:Landroid/app/Application;
    invoke-static {v0}, Lcom/begal/appclone/classes/ApplicationWrapper;->access$000(Lcom/begal/appclone/classes/ApplicationWrapper;)Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method
