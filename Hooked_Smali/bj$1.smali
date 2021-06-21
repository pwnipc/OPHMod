.class final Lbj$1;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbj;->c()V
.end annotation


# instance fields
.field private synthetic Code:Lbj;


# direct methods
.method constructor <init>(Lbj;)V
    .registers 2

    .prologue
    .line 431
    iput-object p1, p0, Lbj$1;->Code:Lbj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 434
    iget-object v0, p0, Lbj$1;->Code:Lbj;

    invoke-static {v0}, Lbj;->Code(Lbj;)V

    .line 435
    return-void
.end method
