.class Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity$2;
.super Landroid/widget/ScrollView;
.source "LogcatViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;


# direct methods
.method constructor <init>(Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;
    .param p2, "x0"    # Landroid/content/Context;

    .line 298
    iput-object p1, p0, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity$2;->this$0:Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;

    invoke-direct {p0, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .registers 6
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .line 301
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 302
    const/4 v0, 0x0

    # setter for: Lcom/begal/appclone/classes/LogcatViewer;->sAutoScroll:Z
    invoke-static {v0}, Lcom/begal/appclone/classes/LogcatViewer;->access$102(Z)Z

    .line 303
    return-void
.end method
