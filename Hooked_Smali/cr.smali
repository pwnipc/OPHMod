.class final Lcr;
.super Ljava/lang/Object;
.source "Source"


# instance fields
.field private final Code:Lbg;

.field private final I:Lcx;

.field private J:Z

.field private final Z:Lcx;


# direct methods
.method constructor <init>(Lbg;)V
    .registers 3

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcr;->Code:Lbg;

    .line 17
    new-instance v0, Lcx;

    invoke-direct {v0, p1}, Lcx;-><init>(Lbg;)V

    iput-object v0, p0, Lcr;->I:Lcx;

    .line 18
    new-instance v0, Lcx;

    invoke-direct {v0, p1}, Lcx;-><init>(Lbg;)V

    iput-object v0, p0, Lcr;->Z:Lcx;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcr;->J:Z

    .line 20
    return-void
.end method


# virtual methods
.method final B()V
    .registers 3

    .prologue
    .line 233
    iget-boolean v0, p0, Lcr;->J:Z

    if-nez v0, :cond_5

    .line 239
    :goto_4
    return-void

    .line 237
    :cond_5
    invoke-virtual {p0}, Lcr;->C()Ljava/lang/String;

    move-result-object v0

    .line 238
    sget-object v1, Lar;->Code:Lci;

    invoke-interface {v1}, Lci;->w()Lbb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbb;->Code(Ljava/lang/String;)V

    goto :goto_4
.end method

.method final C()Ljava/lang/String;
    .registers 5

    .prologue
    .line 243
    iget-boolean v0, p0, Lcr;->J:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcr;->I:Lcx;

    invoke-virtual {v0}, Lcx;->Code()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcr;->Z:Lcx;

    invoke-virtual {v0}, Lcx;->Code()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 245
    :cond_14
    const-string v0, ""

    .line 256
    :goto_16
    return-object v0

    .line 247
    :cond_17
    iget-object v0, p0, Lcr;->I:Lcx;

    iget-object v1, p0, Lcr;->Z:Lcx;

    invoke-static {v0, v1}, Lcx;->Code(Lcx;Lcx;)Lcx;

    move-result-object v1

    .line 248
    iget-object v0, p0, Lcr;->I:Lcx;

    if-eq v1, v0, :cond_47

    iget-object v0, p0, Lcr;->I:Lcx;

    .line 249
    :goto_25
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 250
    new-instance v3, Lcx;

    invoke-direct {v3, v1}, Lcx;-><init>(Lcx;)V

    .line 251
    :cond_2f
    invoke-virtual {v3, v0}, Lcx;->Z(Lcx;)I

    move-result v1

    if-gez v1, :cond_42

    .line 253
    invoke-virtual {v3}, Lcx;->Z()C

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 254
    invoke-virtual {v3}, Lcx;->J()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 256
    :cond_42
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 248
    :cond_47
    iget-object v0, p0, Lcr;->Z:Lcx;

    goto :goto_25
.end method

.method final Code()Lcx;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcr;->I:Lcx;

    return-object v0
.end method

.method final Code(III)V
    .registers 5

    .prologue
    .line 24
    iget-object v0, p0, Lcr;->I:Lcx;

    invoke-virtual {v0, p1, p2, p3}, Lcx;->Code(III)V

    .line 25
    return-void
.end method

.method final Code(Lbr;IIIIIIII[CIIIZ)V
    .registers 33

    .prologue
    .line 162
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcr;->J:Z

    if-eqz v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcr;->I:Lcx;

    invoke-virtual {v3}, Lcx;->Code()Z

    move-result v3

    if-nez v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcr;->Z:Lcx;

    invoke-virtual {v3}, Lcx;->Code()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 223
    :cond_1a
    return-void

    .line 168
    :cond_1b
    invoke-static/range {p12 .. p12}, Ldb;->C(I)I

    move-result v5

    .line 169
    div-int v6, p13, v5

    const/4 v14, 0x1

    const/4 v3, 0x0

    move v4, v3

    :goto_24
    move/from16 v0, p11

    if-ge v4, v0, :cond_36

    if-gt v14, v6, :cond_36

    aget-char v3, p10, v4

    const/16 v7, 0xa

    if-ne v3, v7, :cond_176

    add-int/lit8 v3, v14, 0x1

    :goto_32
    add-int/lit8 v4, v4, 0x1

    move v14, v3

    goto :goto_24

    .line 170
    :cond_36
    const/4 v4, 0x0

    .line 173
    move-object/from16 v0, p0

    iget-object v3, v0, Lcr;->Code:Lbg;

    invoke-virtual {v3, v5}, Lbg;->a(I)I

    move-result v7

    .line 176
    const/4 v3, 0x0

    move v15, v3

    move/from16 v16, v4

    :goto_43
    if-ge v15, v14, :cond_1a

    .line 178
    const/4 v3, 0x0

    move/from16 v17, v3

    move/from16 v3, v16

    :goto_4a
    move/from16 v0, p11

    if-ge v3, v0, :cond_5b

    aget-char v4, p10, v3

    const/16 v5, 0xa

    if-eq v4, v5, :cond_5b

    add-int/lit8 v4, v17, 0x1

    add-int/lit8 v3, v3, 0x1

    move/from16 v17, v4

    goto :goto_4a

    .line 180
    :cond_5b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcr;->I:Lcx;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcr;->Z:Lcx;

    move/from16 v0, p9

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v3, v4, v0, v1, v2}, Lcx;->Code(Lcx;Lcx;III)Z

    move-result v3

    if-eqz v3, :cond_14a

    .line 182
    move-object/from16 v0, p0

    iget-object v3, v0, Lcr;->Code:Lbg;

    mul-int v4, p13, v15

    div-int/2addr v4, v14

    invoke-virtual {v3, v4}, Lbg;->a(I)I

    move-result v3

    add-int v5, p5, v3

    .line 184
    move-object/from16 v0, p0

    iget-object v3, v0, Lcr;->I:Lcx;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcr;->Z:Lcx;

    move/from16 v0, p9

    move/from16 v1, v16

    invoke-static {v3, v4, v0, v1}, Lcx;->Code(Lcx;Lcx;II)I

    move-result v3

    .line 187
    move/from16 v0, p12

    move-object/from16 v1, p10

    move/from16 v2, v16

    invoke-static {v0, v1, v2, v3}, Ldb;->Code(I[CII)I

    move-result v4

    .line 189
    add-int v6, v16, v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcr;->I:Lcx;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcr;->Z:Lcx;

    move/from16 v0, p9

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v8, v9, v0, v1, v2}, Lcx;->I(Lcx;Lcx;III)I

    move-result v8

    sub-int v3, v8, v3

    move/from16 v0, p12

    move-object/from16 v1, p10

    invoke-static {v0, v1, v6, v3}, Ldb;->Code(I[CII)I

    move-result v3

    .line 195
    move-object/from16 v0, p0

    iget-object v6, v0, Lcr;->Code:Lbg;

    invoke-virtual {v6, v4}, Lbg;->a(I)I

    move-result v4

    .line 196
    move-object/from16 v0, p0

    iget-object v6, v0, Lcr;->Code:Lbg;

    invoke-virtual {v6, v3}, Lbg;->a(I)I

    move-result v6

    .line 199
    if-eqz p14, :cond_155

    add-int v4, v4, p4

    .line 204
    :goto_c8
    const v8, -0x4f2f01

    move-object/from16 v3, p1

    invoke-interface/range {v3 .. v8}, Lbr;->Z(IIIII)V

    .line 206
    add-int/lit8 v3, v15, 0x1

    if-ne v3, v14, :cond_14a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcr;->I:Lcx;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcr;->Z:Lcx;

    move/from16 v0, p9

    invoke-static {v3, v8, v0}, Lcx;->I(Lcx;Lcx;I)Z

    move-result v3

    if-eqz v3, :cond_14a

    .line 209
    move-object/from16 v0, p0

    iget-object v3, v0, Lcr;->Code:Lbg;

    move/from16 v0, p9

    move/from16 v1, p7

    move/from16 v2, p8

    invoke-virtual {v3, v0, v1, v2}, Lbg;->Code(III)Lcw;

    move-result-object v3

    .line 211
    mul-int v8, p13, v15

    div-int/2addr v8, v14

    add-int v8, v8, p8

    invoke-static/range {p12 .. p12}, Ldb;->C(I)I

    move-result v9

    invoke-virtual {v3}, Lcw;->Z()I

    move-result v10

    invoke-virtual {v3}, Lcw;->B()I

    move-result v11

    invoke-static {v8, v9, v10, v11}, Lcw;->Code(IIII)Z

    move-result v8

    if-eqz v8, :cond_14a

    .line 214
    if-eqz p14, :cond_15c

    add-int v9, v4, v6

    :goto_10d
    invoke-virtual {v3}, Lcw;->Z()I

    move-result v4

    invoke-virtual {v3}, Lcw;->B()I

    move-result v6

    move/from16 v0, p13

    if-ge v0, v6, :cond_173

    move-object/from16 v0, p0

    iget-object v5, v0, Lcr;->Code:Lbg;

    add-int/2addr v6, v4

    invoke-virtual {v5, v6}, Lbg;->a(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcr;->Code:Lbg;

    invoke-virtual {v6, v4}, Lbg;->a(I)I

    move-result v4

    sub-int v12, v5, v4

    add-int v10, v4, p3

    :goto_12e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcr;->Code:Lbg;

    invoke-virtual {v3}, Lcw;->I()I

    move-result v5

    invoke-virtual {v4, v5}, Lbg;->a(I)I

    move-result v4

    add-int v4, v4, p2

    if-ge v9, v4, :cond_15e

    sub-int v3, v4, v9

    add-int/lit8 v11, v3, 0x1

    const v13, -0x4f2f01

    move-object/from16 v8, p1

    invoke-interface/range {v8 .. v13}, Lbr;->Z(IIIII)V

    .line 221
    :cond_14a
    :goto_14a
    add-int/lit8 v3, v17, 0x1

    add-int v4, v16, v3

    .line 176
    add-int/lit8 v3, v15, 0x1

    move v15, v3

    move/from16 v16, v4

    goto/16 :goto_43

    .line 199
    :cond_155
    add-int v3, p4, p6

    sub-int/2addr v3, v4

    sub-int v4, v3, v6

    goto/16 :goto_c8

    :cond_15c
    move v9, v4

    .line 214
    goto :goto_10d

    :cond_15e
    invoke-virtual {v3}, Lcw;->J()I

    move-result v3

    add-int v5, v4, v3

    add-int/2addr v3, v4

    sub-int v3, v9, v3

    add-int/lit8 v11, v3, 0x1

    const v13, -0x4f2f01

    move-object/from16 v8, p1

    move v9, v5

    invoke-interface/range {v8 .. v13}, Lbr;->Z(IIIII)V

    goto :goto_14a

    :cond_173
    move v12, v7

    move v10, v5

    goto :goto_12e

    :cond_176
    move v3, v14

    goto/16 :goto_32
.end method

.method final Code(Lcx;)V
    .registers 3

    .prologue
    .line 29
    iget-object v0, p0, Lcr;->I:Lcx;

    invoke-virtual {v0, p1}, Lcx;->Code(Lcx;)V

    .line 30
    return-void
.end method

.method final Code(Z)V
    .registers 2

    .prologue
    .line 69
    iput-boolean p1, p0, Lcr;->J:Z

    .line 70
    return-void
.end method

.method final Code(I)Z
    .registers 4

    .prologue
    .line 80
    iget-object v0, p0, Lcr;->I:Lcx;

    iget-object v1, p0, Lcr;->Z:Lcx;

    invoke-static {v0, v1, p1}, Lcx;->Code(Lcx;Lcx;I)Z

    move-result v0

    return v0
.end method

.method final I()Lcx;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcr;->Z:Lcx;

    return-object v0
.end method

.method final I(III)V
    .registers 5

    .prologue
    .line 34
    iget-object v0, p0, Lcr;->I:Lcx;

    invoke-virtual {v0, p1, p2, p3}, Lcx;->I(III)V

    .line 35
    return-void
.end method

.method final I(Lcx;)V
    .registers 3

    .prologue
    .line 49
    iget-object v0, p0, Lcr;->Z:Lcx;

    invoke-virtual {v0, p1}, Lcx;->Code(Lcx;)V

    .line 50
    return-void
.end method

.method final J()V
    .registers 2

    .prologue
    .line 227
    iget-object v0, p0, Lcr;->I:Lcx;

    invoke-virtual {v0}, Lcx;->I()V

    .line 228
    iget-object v0, p0, Lcr;->Z:Lcx;

    invoke-virtual {v0}, Lcx;->I()V

    .line 229
    return-void
.end method

.method final J(III)V
    .registers 5

    .prologue
    .line 54
    iget-object v0, p0, Lcr;->Z:Lcx;

    invoke-virtual {v0, p1, p2, p3}, Lcx;->Z(III)V

    .line 55
    return-void
.end method

.method final Z(III)V
    .registers 5

    .prologue
    .line 44
    iget-object v0, p0, Lcr;->Z:Lcx;

    invoke-virtual {v0, p1, p2, p3}, Lcx;->Code(III)V

    .line 45
    return-void
.end method

.method final Z()Z
    .registers 2

    .prologue
    .line 74
    iget-boolean v0, p0, Lcr;->J:Z

    return v0
.end method

.method final a()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 264
    iget-boolean v1, p0, Lcr;->J:Z

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcr;->I:Lcx;

    invoke-virtual {v1}, Lcx;->Code()Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, p0, Lcr;->Z:Lcx;

    invoke-virtual {v1}, Lcx;->Code()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 268
    :cond_15
    :goto_15
    return v0

    :cond_16
    iget-object v1, p0, Lcr;->I:Lcx;

    iget-object v2, p0, Lcr;->Z:Lcx;

    invoke-virtual {v1, v2}, Lcx;->I(Lcx;)Z

    move-result v1

    if-nez v1, :cond_15

    const/4 v0, 0x1

    goto :goto_15
.end method
