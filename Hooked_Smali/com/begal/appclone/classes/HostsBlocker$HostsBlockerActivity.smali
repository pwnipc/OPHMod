.class public Lcom/begal/appclone/classes/HostsBlocker$HostsBlockerActivity;
.super Landroid/app/Activity;
.source "HostsBlocker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/begal/appclone/classes/HostsBlocker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HostsBlockerActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 441
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 445
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 447
    invoke-virtual {p0}, Lcom/begal/appclone/classes/HostsBlocker$HostsBlockerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "host"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, "host":Ljava/lang/String;
    # getter for: Lcom/begal/appclone/classes/HostsBlocker;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/HostsBlocker;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate; host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    # invokes: Lcom/begal/appclone/classes/HostsBlocker;->splitHost(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v0}, Lcom/begal/appclone/classes/HostsBlocker;->access$800(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 451
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 453
    .local v3, "items":[Ljava/lang/String;
    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    aget-object v5, v3, v2

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 455
    .local v4, "ref":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/begal/appclone/classes/Utils;->getDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 456
    # getter for: Lcom/begal/appclone/classes/HostsBlocker;->sHostsBlockerTitle:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/HostsBlocker;->access$900()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/begal/appclone/classes/HostsBlocker$HostsBlockerActivity$1;

    invoke-direct {v6, p0, v3, v4}, Lcom/begal/appclone/classes/HostsBlocker$HostsBlockerActivity$1;-><init>(Lcom/begal/appclone/classes/HostsBlocker$HostsBlockerActivity;[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 457
    invoke-virtual {v5, v3, v2, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 464
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v6, 0x0

    const/16 v7, 0x15

    if-le v5, v7, :cond_75

    .line 465
    const-string v5, "Whois"

    .line 466
    invoke-virtual {v2, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 467
    # getter for: Lcom/begal/appclone/classes/HostsBlocker;->sAllowLabel:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/HostsBlocker;->access$1100()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Lcom/begal/appclone/classes/HostsBlocker$HostsBlockerActivity$3;

    invoke-direct {v8, p0, v4}, Lcom/begal/appclone/classes/HostsBlocker$HostsBlockerActivity$3;-><init>(Lcom/begal/appclone/classes/HostsBlocker$HostsBlockerActivity;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v5, v6, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 474
    # getter for: Lcom/begal/appclone/classes/HostsBlocker;->sBlockLabel:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/HostsBlocker;->access$1000()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Lcom/begal/appclone/classes/HostsBlocker$HostsBlockerActivity$2;

    invoke-direct {v8, p0, v4}, Lcom/begal/appclone/classes/HostsBlocker$HostsBlockerActivity$2;-><init>(Lcom/begal/appclone/classes/HostsBlocker$HostsBlockerActivity;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v5, v6, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_94

    .line 482
    :cond_75
    const-string v5, "Whois"

    .line 483
    invoke-virtual {v2, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 484
    # getter for: Lcom/begal/appclone/classes/HostsBlocker;->sAllowLabel:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/HostsBlocker;->access$1100()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Lcom/begal/appclone/classes/HostsBlocker$HostsBlockerActivity$5;

    invoke-direct {v8, p0, v4}, Lcom/begal/appclone/classes/HostsBlocker$HostsBlockerActivity$5;-><init>(Lcom/begal/appclone/classes/HostsBlocker$HostsBlockerActivity;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v5, v6, v8}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 491
    # getter for: Lcom/begal/appclone/classes/HostsBlocker;->sBlockLabel:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/HostsBlocker;->access$1000()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Lcom/begal/appclone/classes/HostsBlocker$HostsBlockerActivity$4;

    invoke-direct {v8, p0, v4}, Lcom/begal/appclone/classes/HostsBlocker$HostsBlockerActivity$4;-><init>(Lcom/begal/appclone/classes/HostsBlocker$HostsBlockerActivity;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v5, v6, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 500
    :goto_94
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 502
    .local v5, "dialog":Landroid/app/AlertDialog;
    new-instance v6, Lcom/begal/appclone/classes/HostsBlocker$HostsBlockerActivity$6;

    invoke-direct {v6, p0}, Lcom/begal/appclone/classes/HostsBlocker$HostsBlockerActivity$6;-><init>(Lcom/begal/appclone/classes/HostsBlocker$HostsBlockerActivity;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 509
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 511
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v6, v7, :cond_b5

    .line 512
    const/4 v6, -0x3

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    new-instance v7, Lcom/begal/appclone/classes/HostsBlocker$HostsBlockerActivity$7;

    invoke-direct {v7, p0, v4}, Lcom/begal/appclone/classes/HostsBlocker$HostsBlockerActivity$7;-><init>(Lcom/begal/appclone/classes/HostsBlocker$HostsBlockerActivity;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_c2

    .line 519
    :cond_b5
    const/4 v6, -0x2

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    new-instance v7, Lcom/begal/appclone/classes/HostsBlocker$HostsBlockerActivity$8;

    invoke-direct {v7, p0, v4}, Lcom/begal/appclone/classes/HostsBlocker$HostsBlockerActivity$8;-><init>(Lcom/begal/appclone/classes/HostsBlocker$HostsBlockerActivity;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 527
    :goto_c2
    invoke-static {v5}, Lcom/begal/appclone/classes/Utils;->keepDialogOpenOnOrientationChange(Landroid/app/Dialog;)V

    .line 528
    return-void
.end method
