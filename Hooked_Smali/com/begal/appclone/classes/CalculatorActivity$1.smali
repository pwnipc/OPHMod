.class Lcom/begal/appclone/classes/CalculatorActivity$1;
.super Ljava/lang/Object;
.source "CalculatorActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/begal/appclone/classes/CalculatorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/begal/appclone/classes/CalculatorActivity;


# direct methods
.method constructor <init>(Lcom/begal/appclone/classes/CalculatorActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/begal/appclone/classes/CalculatorActivity;

    .line 132
    iput-object p1, p0, Lcom/begal/appclone/classes/CalculatorActivity$1;->this$0:Lcom/begal/appclone/classes/CalculatorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 136
    iget-object v0, p0, Lcom/begal/appclone/classes/CalculatorActivity$1;->this$0:Lcom/begal/appclone/classes/CalculatorActivity;

    const-string v1, ""

    # setter for: Lcom/begal/appclone/classes/CalculatorActivity;->mSymbol:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/begal/appclone/classes/CalculatorActivity;->access$002(Lcom/begal/appclone/classes/CalculatorActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/begal/appclone/classes/CalculatorActivity$1;->this$0:Lcom/begal/appclone/classes/CalculatorActivity;

    const-string v1, "0"

    # setter for: Lcom/begal/appclone/classes/CalculatorActivity;->mNumber1:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/begal/appclone/classes/CalculatorActivity;->access$102(Lcom/begal/appclone/classes/CalculatorActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lcom/begal/appclone/classes/CalculatorActivity$1;->this$0:Lcom/begal/appclone/classes/CalculatorActivity;

    const-string v1, "0"

    # setter for: Lcom/begal/appclone/classes/CalculatorActivity;->mNumber2:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/begal/appclone/classes/CalculatorActivity;->access$202(Lcom/begal/appclone/classes/CalculatorActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/begal/appclone/classes/CalculatorActivity$1;->this$0:Lcom/begal/appclone/classes/CalculatorActivity;

    # getter for: Lcom/begal/appclone/classes/CalculatorActivity;->mDisplay:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/begal/appclone/classes/CalculatorActivity;->access$300(Lcom/begal/appclone/classes/CalculatorActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    const/4 v0, 0x1

    return v0
.end method
