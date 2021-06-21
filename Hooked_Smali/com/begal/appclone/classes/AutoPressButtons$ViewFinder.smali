.class abstract Lcom/begal/appclone/classes/AutoPressButtons$ViewFinder;
.super Ljava/lang/Object;
.source "AutoPressButtons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/begal/appclone/classes/AutoPressButtons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "ViewFinder"
.end annotation


# instance fields
.field mRootView:Landroid/view/View;

.field final synthetic this$0:Lcom/begal/appclone/classes/AutoPressButtons;


# direct methods
.method constructor <init>(Lcom/begal/appclone/classes/AutoPressButtons;Landroid/view/View;)V
    .registers 3
    .param p1, "this$0"    # Lcom/begal/appclone/classes/AutoPressButtons;
    .param p2, "rootView"    # Landroid/view/View;

    .line 164
    iput-object p1, p0, Lcom/begal/appclone/classes/AutoPressButtons$ViewFinder;->this$0:Lcom/begal/appclone/classes/AutoPressButtons;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-object p2, p0, Lcom/begal/appclone/classes/AutoPressButtons$ViewFinder;->mRootView:Landroid/view/View;

    .line 166
    return-void
.end method


# virtual methods
.method findView()Landroid/view/View;
    .registers 2

    .line 169
    iget-object v0, p0, Lcom/begal/appclone/classes/AutoPressButtons$ViewFinder;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/begal/appclone/classes/AutoPressButtons$ViewFinder;->findView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method findView(Landroid/view/View;)Landroid/view/View;
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .line 175
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/begal/appclone/classes/AutoPressButtons$ViewFinder;->matchesView(Landroid/view/View;)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_8

    if-eqz v0, :cond_7

    .line 176
    return-object p1

    .line 180
    :cond_7
    goto :goto_10

    .line 178
    :catch_8
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/begal/appclone/classes/AutoPressButtons;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/AutoPressButtons;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_10
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2c

    .line 183
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 184
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 185
    .local v1, "count":I
    const/4 v2, 0x0

    .line 185
    .local v2, "i":I
    :goto_1c
    if-ge v2, v1, :cond_2c

    .line 186
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/begal/appclone/classes/AutoPressButtons$ViewFinder;->findView(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    .line 187
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_29

    .line 188
    return-object v3

    .line 185
    .end local v3    # "view":Landroid/view/View;
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 193
    .end local v0    # "viewGroup":Landroid/view/ViewGroup;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_2c
    const/4 v0, 0x0

    return-object v0
.end method

.method abstract matchesView(Landroid/view/View;)Z
.end method
