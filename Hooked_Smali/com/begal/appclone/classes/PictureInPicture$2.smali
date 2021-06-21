.class Lcom/begal/appclone/classes/PictureInPicture$2;
.super Ljava/lang/Object;
.source "PictureInPicture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/begal/appclone/classes/PictureInPicture;->startPictureInPictureDelayed(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/begal/appclone/classes/PictureInPicture;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/begal/appclone/classes/PictureInPicture;Landroid/app/Activity;)V
    .registers 3
    .param p1, "this$0"    # Lcom/begal/appclone/classes/PictureInPicture;

    .line 100
    iput-object p1, p0, Lcom/begal/appclone/classes/PictureInPicture$2;->this$0:Lcom/begal/appclone/classes/PictureInPicture;

    iput-object p2, p0, Lcom/begal/appclone/classes/PictureInPicture$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 103
    iget-object v0, p0, Lcom/begal/appclone/classes/PictureInPicture$2;->this$0:Lcom/begal/appclone/classes/PictureInPicture;

    iget-object v1, p0, Lcom/begal/appclone/classes/PictureInPicture$2;->val$activity:Landroid/app/Activity;

    # invokes: Lcom/begal/appclone/classes/PictureInPicture;->startPictureInPicture(Landroid/app/Activity;)V
    invoke-static {v0, v1}, Lcom/begal/appclone/classes/PictureInPicture;->access$400(Lcom/begal/appclone/classes/PictureInPicture;Landroid/app/Activity;)V

    .line 104
    return-void
.end method
