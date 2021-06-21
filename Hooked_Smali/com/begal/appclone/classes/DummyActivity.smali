.class public Lcom/begal/appclone/classes/DummyActivity;
.super Landroid/app/Activity;
.source "DummyActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const/high16 v0, 0x7f020000

    invoke-virtual {p0, v0}, Lcom/begal/appclone/classes/DummyActivity;->setContentView(I)V

    .line 67
    return-void
.end method
