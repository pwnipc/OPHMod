.class final Lcom/opera/mini/android/Browser$5;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opera/mini/android/Browser;->Code(Ljava/lang/String;)V
.end annotation


# instance fields
.field private synthetic Code:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 631
    iput-object p1, p0, Lcom/opera/mini/android/Browser$5;->Code:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 634
    sget-object v0, Lar;->I:Lar;

    invoke-virtual {v0}, Lar;->h()V

    .line 635
    sget-object v0, Lar;->Z:Lan;

    sget-object v1, Lar;->Z:Lan;

    iget-object v2, p0, Lcom/opera/mini/android/Browser$5;->Code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lan;->Code(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lan;->b(I)V

    .line 636
    sget-object v0, Lar;->Z:Lan;

    invoke-virtual {v0, v3}, Lan;->c(I)V

    .line 637
    sget-object v0, Lar;->Z:Lan;

    invoke-virtual {v0, v3}, Lan;->c(I)V

    .line 638
    sget-object v0, Lar;->I:Lar;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lar;->Z(I)V

    .line 639
    return-void
.end method
