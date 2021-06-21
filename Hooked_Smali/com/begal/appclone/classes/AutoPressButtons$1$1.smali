.class Lcom/begal/appclone/classes/AutoPressButtons$1$1;
.super Ljava/lang/Object;
.source "AutoPressButtons.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/begal/appclone/classes/AutoPressButtons$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/begal/appclone/classes/AutoPressButtons$1;


# direct methods
.method constructor <init>(Lcom/begal/appclone/classes/AutoPressButtons$1;)V
    .registers 2
    .param p1, "this$1"    # Lcom/begal/appclone/classes/AutoPressButtons$1;

    .line 81
    iput-object p1, p0, Lcom/begal/appclone/classes/AutoPressButtons$1$1;->this$1:Lcom/begal/appclone/classes/AutoPressButtons$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .registers 4
    .param p1, "hasFocus"    # Z

    .line 84
    # getter for: Lcom/begal/appclone/classes/AutoPressButtons;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/AutoPressButtons;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onWindowFocusChanged; "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/begal/appclone/classes/AutoPressButtons$1$1;->this$1:Lcom/begal/appclone/classes/AutoPressButtons$1;

    iget-object v0, v0, Lcom/begal/appclone/classes/AutoPressButtons$1;->this$0:Lcom/begal/appclone/classes/AutoPressButtons;

    # invokes: Lcom/begal/appclone/classes/AutoPressButtons;->checkForButtons()V
    invoke-static {v0}, Lcom/begal/appclone/classes/AutoPressButtons;->access$100(Lcom/begal/appclone/classes/AutoPressButtons;)V

    .line 86
    return-void
.end method
