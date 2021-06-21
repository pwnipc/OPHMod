.class final Lba;
.super Ljava/lang/Object;
.source "Source"


# instance fields
.field private final Code:Lbg;

.field private final I:Lcx;

.field private Z:Z


# direct methods
.method constructor <init>(Lbg;)V
    .registers 3

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lba;->Z:Z

    .line 13
    iput-object p1, p0, Lba;->Code:Lbg;

    .line 14
    new-instance v0, Lcx;

    invoke-direct {v0, p1}, Lcx;-><init>(Lbg;)V

    iput-object v0, p0, Lba;->I:Lcx;

    .line 15
    return-void
.end method


# virtual methods
.method final Code()I
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lba;->I:Lcx;

    invoke-virtual {v0}, Lcx;->B()I

    move-result v0

    return v0
.end method

.method final Code(I)V
    .registers 3

    .prologue
    .line 44
    iget-object v0, p0, Lba;->I:Lcx;

    invoke-virtual {v0, p1}, Lcx;->Code(I)V

    .line 45
    return-void
.end method

.method final Code(III)V
    .registers 5

    .prologue
    .line 19
    iget-object v0, p0, Lba;->I:Lcx;

    invoke-virtual {v0, p1, p2, p3}, Lcx;->Code(III)V

    .line 20
    return-void
.end method

.method final Code(Lbr;III)V
    .registers 16

    .prologue
    const/4 v3, 0x3

    const/4 v4, 0x1

    .line 70
    iget-boolean v0, p0, Lba;->Z:Z

    if-nez v0, :cond_7

    .line 90
    :goto_6
    return-void

    .line 73
    :cond_7
    iget-object v0, p0, Lba;->I:Lcx;

    invoke-virtual {v0}, Lcx;->B()I

    move-result v0

    .line 74
    iget-object v1, p0, Lba;->I:Lcx;

    invoke-virtual {v1}, Lcx;->C()I

    move-result v1

    .line 75
    iget-object v2, p0, Lba;->I:Lcx;

    invoke-virtual {v2}, Lcx;->b()I

    move-result v5

    .line 78
    iget-object v2, p0, Lba;->Code:Lbg;

    invoke-virtual {v2, v0}, Lbg;->a(I)I

    move-result v0

    add-int v6, v0, p2

    .line 79
    iget-object v0, p0, Lba;->Code:Lbg;

    invoke-virtual {v0, v1}, Lbg;->a(I)I

    move-result v0

    add-int v2, v0, p3

    .line 84
    iget-object v0, p0, Lba;->Code:Lbg;

    invoke-virtual {v0, v5}, Lbg;->a(I)I

    move-result v9

    .line 87
    add-int/lit8 v1, v6, -0x1

    move-object v0, p1

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lbr;->Z(IIIII)V

    move-object v5, p1

    move v7, v2

    move v8, v4

    move v10, p4

    .line 88
    invoke-interface/range {v5 .. v10}, Lbr;->Z(IIIII)V

    .line 89
    add-int/lit8 v1, v6, -0x1

    add-int v0, v2, v9

    add-int/lit8 v2, v0, -0x1

    move-object v0, p1

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lbr;->Z(IIIII)V

    goto :goto_6
.end method

.method final Code(Lcx;)V
    .registers 3

    .prologue
    .line 24
    iget-object v0, p0, Lba;->I:Lcx;

    invoke-virtual {v0, p1}, Lcx;->Code(Lcx;)V

    .line 25
    return-void
.end method

.method final Code(Z)V
    .registers 2

    .prologue
    .line 49
    iput-boolean p1, p0, Lba;->Z:Z

    .line 50
    return-void
.end method

.method final I()I
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lba;->I:Lcx;

    invoke-virtual {v0}, Lcx;->C()I

    move-result v0

    return v0
.end method

.method final I(I)Z
    .registers 3

    .prologue
    .line 59
    iget-object v0, p0, Lba;->I:Lcx;

    invoke-virtual {v0, p1}, Lcx;->I(I)Z

    move-result v0

    return v0
.end method

.method final J()Z
    .registers 2

    .prologue
    .line 54
    iget-boolean v0, p0, Lba;->Z:Z

    return v0
.end method

.method final Z()Lcx;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lba;->I:Lcx;

    return-object v0
.end method
