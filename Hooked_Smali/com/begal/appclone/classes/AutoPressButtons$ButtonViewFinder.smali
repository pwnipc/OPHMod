.class Lcom/begal/appclone/classes/AutoPressButtons$ButtonViewFinder;
.super Lcom/begal/appclone/classes/AutoPressButtons$ViewFinder;
.source "AutoPressButtons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/begal/appclone/classes/AutoPressButtons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ButtonViewFinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/begal/appclone/classes/AutoPressButtons;


# direct methods
.method constructor <init>(Lcom/begal/appclone/classes/AutoPressButtons;Landroid/view/View;)V
    .registers 3
    .param p1, "this$0"    # Lcom/begal/appclone/classes/AutoPressButtons;
    .param p2, "rootView"    # Landroid/view/View;

    .line 201
    iput-object p1, p0, Lcom/begal/appclone/classes/AutoPressButtons$ButtonViewFinder;->this$0:Lcom/begal/appclone/classes/AutoPressButtons;

    .line 202
    invoke-direct {p0, p1, p2}, Lcom/begal/appclone/classes/AutoPressButtons$ViewFinder;-><init>(Lcom/begal/appclone/classes/AutoPressButtons;Landroid/view/View;)V

    .line 203
    return-void
.end method


# virtual methods
.method matchesView(Landroid/view/View;)Z
    .registers 13
    .param p1, "v"    # Landroid/view/View;

    .line 208
    instance-of v0, p1, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_79

    .line 209
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 210
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_79

    .line 211
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 212
    .local v2, "text":Ljava/lang/CharSequence;
    if-eqz v2, :cond_79

    .line 213
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, "s":Ljava/lang/String;
    iget-object v4, p0, Lcom/begal/appclone/classes/AutoPressButtons$ButtonViewFinder;->this$0:Lcom/begal/appclone/classes/AutoPressButtons;

    # getter for: Lcom/begal/appclone/classes/AutoPressButtons;->mAutoPressButtons:Ljava/util/Map;
    invoke-static {v4}, Lcom/begal/appclone/classes/AutoPressButtons;->access$300(Lcom/begal/appclone/classes/AutoPressButtons;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_79

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 215
    .local v5, "buttonLabel":Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_78

    .line 216
    iget-object v4, p0, Lcom/begal/appclone/classes/AutoPressButtons$ButtonViewFinder;->this$0:Lcom/begal/appclone/classes/AutoPressButtons;

    # getter for: Lcom/begal/appclone/classes/AutoPressButtons;->mAutoPressButtons:Ljava/util/Map;
    invoke-static {v4}, Lcom/begal/appclone/classes/AutoPressButtons;->access$300(Lcom/begal/appclone/classes/AutoPressButtons;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 217
    .local v4, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;>;"
    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 218
    .local v6, "screenText":Ljava/lang/String;
    iget-object v7, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 219
    .local v7, "enabled":Ljava/util/concurrent/atomic/AtomicBoolean;
    if-eqz v7, :cond_5a

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-eqz v8, :cond_70

    .line 220
    :cond_5a
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_71

    new-instance v8, Lcom/begal/appclone/classes/AutoPressButtons$TextViewFinder;

    iget-object v9, p0, Lcom/begal/appclone/classes/AutoPressButtons$ButtonViewFinder;->this$0:Lcom/begal/appclone/classes/AutoPressButtons;

    iget-object v10, p0, Lcom/begal/appclone/classes/AutoPressButtons$ButtonViewFinder;->mRootView:Landroid/view/View;

    invoke-direct {v8, v9, v10, v6}, Lcom/begal/appclone/classes/AutoPressButtons$TextViewFinder;-><init>(Lcom/begal/appclone/classes/AutoPressButtons;Landroid/view/View;Ljava/lang/String;)V

    .line 221
    invoke-virtual {v8}, Lcom/begal/appclone/classes/AutoPressButtons$TextViewFinder;->findView()Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_70

    goto :goto_71

    .line 228
    :cond_70
    return v1

    .line 222
    :cond_71
    :goto_71
    if-eqz v7, :cond_76

    .line 223
    invoke-virtual {v7, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 225
    :cond_76
    const/4 v1, 0x1

    return v1

    .line 230
    .end local v4    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;>;"
    .end local v5    # "buttonLabel":Ljava/lang/String;
    .end local v6    # "screenText":Ljava/lang/String;
    .end local v7    # "enabled":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_78
    goto :goto_2c

    .line 235
    .end local v0    # "textView":Landroid/widget/TextView;
    .end local v2    # "text":Ljava/lang/CharSequence;
    .end local v3    # "s":Ljava/lang/String;
    :cond_79
    return v1
.end method
