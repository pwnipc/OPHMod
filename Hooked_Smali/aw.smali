.class Law;
.super Ljava/lang/Object;
.source "Source"


# instance fields
.field B:I

.field C:I

.field Code:I

.field I:I

.field J:I

.field Z:I


# direct methods
.method constructor <init>(IIIIII)V
    .registers 7

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput p1, p0, Law;->Code:I

    .line 97
    iput p2, p0, Law;->I:I

    .line 98
    iput p3, p0, Law;->Z:I

    .line 99
    iput p4, p0, Law;->J:I

    .line 100
    iput p5, p0, Law;->B:I

    .line 101
    iput p6, p0, Law;->C:I

    .line 102
    return-void
.end method
