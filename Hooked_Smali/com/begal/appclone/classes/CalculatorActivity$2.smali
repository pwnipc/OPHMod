.class Lcom/begal/appclone/classes/CalculatorActivity$2;
.super Ljava/lang/Object;
.source "CalculatorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 144
    iput-object p1, p0, Lcom/begal/appclone/classes/CalculatorActivity$2;->this$0:Lcom/begal/appclone/classes/CalculatorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/begal/appclone/classes/CalculatorActivity$2;->this$0:Lcom/begal/appclone/classes/CalculatorActivity;

    invoke-virtual {v0}, Lcom/begal/appclone/classes/CalculatorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 151
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/begal/appclone/classes/CalculatorActivity$2;->this$0:Lcom/begal/appclone/classes/CalculatorActivity;

    # getter for: Lcom/begal/appclone/classes/CalculatorActivity;->mButtons:Ljava/util/Set;
    invoke-static {v1}, Lcom/begal/appclone/classes/CalculatorActivity;->access$400(Lcom/begal/appclone/classes/CalculatorActivity;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 152
    .local v2, "button":Landroid/widget/Button;
    invoke-virtual {v2}, Landroid/widget/Button;->getHeight()I

    move-result v3

    .line 153
    .local v3, "height":I
    int-to-float v4, v3

    iget v5, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v4, v5

    .line 154
    .local v4, "size":F
    const v5, 0x3ea8f5c3    # 0.33f

    mul-float v6, v4, v5

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setTextSize(F)V

    .line 155
    iget-object v6, p0, Lcom/begal/appclone/classes/CalculatorActivity$2;->this$0:Lcom/begal/appclone/classes/CalculatorActivity;

    # getter for: Lcom/begal/appclone/classes/CalculatorActivity;->mDisplay:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/begal/appclone/classes/CalculatorActivity;->access$300(Lcom/begal/appclone/classes/CalculatorActivity;)Landroid/widget/TextView;

    move-result-object v6

    mul-float v5, v5, v4

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3b} :catch_3d

    .line 156
    .end local v2    # "button":Landroid/widget/Button;
    .end local v3    # "height":I
    .end local v4    # "size":F
    goto :goto_14

    .line 159
    .end local v0    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_3c
    goto :goto_45

    .line 157
    :catch_3d
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/begal/appclone/classes/CalculatorActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/CalculatorActivity;->access$500()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_45
    return-void
.end method
