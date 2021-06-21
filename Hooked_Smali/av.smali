.class final Lav;
.super Law;
.source "Source"


# direct methods
.method constructor <init>(I)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 109
    const/4 v5, 0x1

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, p1

    move v6, v1

    invoke-direct/range {v0 .. v6}, Law;-><init>(IIIIII)V

    .line 110
    return-void
.end method
