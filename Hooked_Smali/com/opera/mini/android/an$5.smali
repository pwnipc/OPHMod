.class final Lcom/opera/mini/android/an$5;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opera/mini/android/an;->Code(Landroid/app/Activity;)V
.end annotation


# instance fields
.field private synthetic Code:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 444
    iput-object p1, p0, Lcom/opera/mini/android/an$5;->Code:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 448
    iget-object v0, p0, Lcom/opera/mini/android/an$5;->Code:Landroid/app/Activity;

    invoke-static {v0}, Lcom/opera/mini/android/an;->Code(Landroid/app/Activity;)V

    .line 449
    return-void
.end method
