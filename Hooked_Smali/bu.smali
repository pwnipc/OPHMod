.class public abstract Lbu;
.super Ljava/lang/Object;
.source "Source"


# instance fields
.field Code:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract B()Lbr;
.end method

.method public Code(IIIIIIIIIIIZ)Lbu;
    .registers 28

    .prologue
    .line 160
    move/from16 v0, p3

    move/from16 v1, p5

    if-ne v0, v1, :cond_35

    move/from16 v0, p4

    move/from16 v1, p6

    if-ne v0, v1, :cond_35

    .line 162
    invoke-virtual {p0}, Lbu;->I()I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_1d

    invoke-virtual {p0}, Lbu;->Z()I

    move-result v2

    move/from16 v0, p4

    if-ne v0, v2, :cond_1d

    .line 179
    :goto_1c
    return-object p0

    .line 168
    :cond_1d
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-virtual/range {v2 .. v14}, Lbu;->Code(IIIIIIIIIIIZ)Lbu;

    move-result-object p0

    goto :goto_1c

    .line 171
    :cond_35
    mul-int v2, p3, p4

    new-array v2, v2, [I

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    .line 172
    invoke-static/range {v2 .. v12}, Lbv;->Code([IIIIIIIIIIZ)[I

    move-result-object v3

    .line 179
    const/4 v2, 0x0

    array-length v4, v3

    div-int v4, v4, p6

    const/4 v6, 0x1

    const/4 v7, 0x1

    move/from16 v5, p6

    invoke-virtual/range {v2 .. v7}, Lbv;->Code([IIIZZ)Lbu;

    move-result-object p0

    goto :goto_1c
.end method

.method public final Code()V
    .registers 2

    .prologue
    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lbu;->Code:I

    .line 58
    return-void
.end method

.method public abstract I()I
.end method

.method public abstract J()I
.end method

.method public abstract Z()I
.end method
