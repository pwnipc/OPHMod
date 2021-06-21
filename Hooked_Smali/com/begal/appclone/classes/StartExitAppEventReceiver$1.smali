.class final Lcom/begal/appclone/classes/StartExitAppEventReceiver$1;
.super Lcom/begal/appclone/classes/AbstractActivityContentProvider;
.source "StartExitAppEventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/begal/appclone/classes/StartExitAppEventReceiver;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/begal/appclone/classes/AbstractActivityContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityCreated(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 33
    # getter for: Lcom/begal/appclone/classes/StartExitAppEventReceiver;->sActivities:Ljava/util/Set;
    invoke-static {}, Lcom/begal/appclone/classes/StartExitAppEventReceiver;->access$000()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method

.method protected onActivityDestroyed(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 38
    # getter for: Lcom/begal/appclone/classes/StartExitAppEventReceiver;->sActivities:Ljava/util/Set;
    invoke-static {}, Lcom/begal/appclone/classes/StartExitAppEventReceiver;->access$000()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 39
    return-void
.end method
