.class Lcom/begal/appclone/classes/OnAppExitListener$1;
.super Ljava/lang/Object;
.source "OnAppExitListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/begal/appclone/classes/OnAppExitListener;->onActivityDestroyed(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/begal/appclone/classes/OnAppExitListener;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/begal/appclone/classes/OnAppExitListener;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lcom/begal/appclone/classes/OnAppExitListener;

    .line 43
    iput-object p1, p0, Lcom/begal/appclone/classes/OnAppExitListener$1;->this$0:Lcom/begal/appclone/classes/OnAppExitListener;

    iput-object p2, p0, Lcom/begal/appclone/classes/OnAppExitListener$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 46
    iget-object v0, p0, Lcom/begal/appclone/classes/OnAppExitListener$1;->this$0:Lcom/begal/appclone/classes/OnAppExitListener;

    iget-object v1, p0, Lcom/begal/appclone/classes/OnAppExitListener$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/begal/appclone/classes/OnAppExitListener;->onAppExit(Landroid/content/Context;)V

    .line 47
    return-void
.end method
