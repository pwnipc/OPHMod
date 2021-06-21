.class Lcom/begal/appclone/classes/CalculatorActivity$3;
.super Ljava/lang/Thread;
.source "CalculatorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/begal/appclone/classes/CalculatorActivity;->exit()V
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

    .line 312
    iput-object p1, p0, Lcom/begal/appclone/classes/CalculatorActivity$3;->this$0:Lcom/begal/appclone/classes/CalculatorActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 316
    const-wide/16 v0, 0xfa

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_6

    .line 318
    goto :goto_7

    .line 317
    :catch_6
    move-exception v0

    .line 319
    :goto_7
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 320
    return-void
.end method
