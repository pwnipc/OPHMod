.class final Lcom/opera/mini/android/an$4;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opera/mini/android/an;->Code(Ljava/lang/String;)V
.end annotation


# instance fields
.field private synthetic Code:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 420
    iput-object p1, p0, Lcom/opera/mini/android/an$4;->Code:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/opera/mini/android/an$4;->Code:Ljava/lang/String;

    invoke-static {v0}, Lcom/opera/mini/android/an;->Code(Ljava/lang/String;)V

    .line 425
    return-void
.end method
