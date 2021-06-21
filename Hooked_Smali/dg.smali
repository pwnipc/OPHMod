.class final Ldg;
.super Ljava/lang/Object;
.source "Source"


# instance fields
.field final Code:Ljava/lang/Object;

.field final I:Ldi;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ldi;)V
    .registers 3

    .prologue
    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 459
    iput-object p1, p0, Ldg;->Code:Ljava/lang/Object;

    .line 460
    iput-object p2, p0, Ldg;->I:Ldi;

    .line 461
    return-void
.end method
