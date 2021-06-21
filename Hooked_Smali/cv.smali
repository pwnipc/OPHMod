.class final Lcv;
.super Ljava/lang/Object;
.source "Source"


# instance fields
.field private B:I

.field private C:I

.field private Code:Ljava/util/Vector;

.field private I:Ljava/util/Hashtable;

.field private J:I

.field private Z:Lbg;

.field private a:I


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcv;->Code:Ljava/util/Vector;

    .line 10
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcv;->I:Ljava/util/Hashtable;

    .line 15
    iput v1, p0, Lcv;->C:I

    iput v1, p0, Lcv;->a:I

    return-void
.end method

.method private static Code(IIIIIIIIII)[I
    .registers 12

    .prologue
    .line 276
    const/16 v0, 0xa

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    aput p2, v0, v1

    const/4 v1, 0x3

    aput p3, v0, v1

    const/4 v1, 0x4

    aput p4, v0, v1

    const/4 v1, 0x5

    aput p5, v0, v1

    const/4 v1, 0x6

    aput p6, v0, v1

    const/4 v1, 0x7

    aput p7, v0, v1

    const/16 v1, 0x8

    aput p8, v0, v1

    const/16 v1, 0x9

    aput p9, v0, v1

    return-object v0
.end method

.method private Z(I)I
    .registers 5

    .prologue
    .line 290
    add-int/lit8 v0, p1, 0x2

    iget-object v1, p0, Lcv;->Z:Lbg;

    invoke-virtual {v1, p1}, Lbg;->I(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 291
    iget-object v1, p0, Lcv;->Z:Lbg;

    invoke-virtual {v1}, Lbg;->Code()I

    move-result v1

    if-ge v0, v1, :cond_1b

    iget-object v1, p0, Lcv;->Z:Lbg;

    invoke-virtual {v1, v0}, Lbg;->Z(I)I

    move-result v1

    const/16 v2, 0x54

    if-eq v1, v2, :cond_1c

    .line 293
    :cond_1b
    const/4 v0, -0x1

    .line 295
    :cond_1c
    return v0
.end method


# virtual methods
.method public final Code(Lbg;ILjava/lang/String;)V
    .registers 33

    .prologue
    .line 24
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcv;->Z:Lbg;

    .line 25
    const/4 v3, 0x0

    .line 27
    const/4 v2, 0x0

    :goto_8
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_3a6

    .line 31
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ldb;->Z(C)Z

    move-result v4

    if-eqz v4, :cond_a7

    .line 33
    const/4 v2, 0x1

    move/from16 v20, v2

    .line 38
    :goto_1d
    const/4 v2, 0x4

    new-array v0, v2, [I

    move-object/from16 v26, v0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcv;->C:I

    aput v3, v26, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcv;->a:I

    aput v3, v26, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v26, v2

    const/4 v2, 0x3

    const/4 v3, 0x0

    aput v3, v26, v2

    .line 40
    move-object/from16 v0, p0

    iget-object v2, v0, Lcv;->Z:Lbg;

    move/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v2, v0, v1}, Lbg;->Code(I[I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcv;->J:I

    .line 41
    :goto_48
    move-object/from16 v0, p0

    iget v2, v0, Lcv;->J:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_346

    .line 44
    const/4 v2, 0x0

    aget v2, v26, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcv;->C:I

    .line 45
    const/4 v2, 0x1

    aget v2, v26, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcv;->a:I

    .line 47
    const/16 v21, 0x0

    .line 48
    move-object/from16 v0, p0

    iget v2, v0, Lcv;->J:I

    add-int/lit8 v2, v2, 0x11

    .line 49
    move-object/from16 v0, p0

    iget-object v4, v0, Lcv;->Z:Lbg;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v4, v2}, Lbg;->Z(I)I

    move-result v2

    move/from16 v25, v3

    move v3, v2

    :goto_72
    if-lez v3, :cond_ab

    .line 51
    move-object/from16 v0, p0

    iget-object v2, v0, Lcv;->Z:Lbg;

    add-int/lit8 v4, v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Lbg;->Z(I)I

    move-result v2

    const/16 v5, 0x74

    if-ne v2, v5, :cond_3a2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcv;->Z:Lbg;

    invoke-virtual {v2, v4}, Lbg;->J(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "s"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a2

    .line 52
    const/4 v2, 0x1

    .line 53
    :goto_95
    move-object/from16 v0, p0

    iget-object v5, v0, Lcv;->Z:Lbg;

    invoke-virtual {v5, v4}, Lbg;->I(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    .line 49
    add-int/lit8 v3, v3, -0x1

    move/from16 v25, v4

    move/from16 v21, v2

    goto :goto_72

    .line 27
    :cond_a7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    .line 56
    :cond_ab
    move-object/from16 v0, p0

    iget-object v2, v0, Lcv;->Z:Lbg;

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Lbg;->J(I)Ljava/lang/String;

    move-result-object v2

    .line 57
    if-eqz v20, :cond_39e

    .line 59
    invoke-static/range {p3 .. p3}, Ldb;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 60
    invoke-static {v2}, Ldb;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v22, v2

    .line 65
    :goto_c1
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcv;->Z(I)I

    move-result v23

    .line 68
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcv;->B:I

    :goto_ce
    if-nez v21, :cond_329

    move-object/from16 v0, p0

    iget v2, v0, Lcv;->B:I

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_329

    .line 71
    move-object/from16 v0, p0

    iget v9, v0, Lcv;->J:I

    move-object/from16 v0, p0

    iget v4, v0, Lcv;->B:I

    move-object/from16 v0, p0

    iget v0, v0, Lcv;->C:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcv;->a:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcv;->Code:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v11

    const/4 v2, 0x1

    move v8, v2

    move/from16 v13, v17

    move/from16 v12, v16

    move v15, v9

    move-object/from16 v5, p3

    move-object/from16 v24, p0

    move-object/from16 v2, v22

    move/from16 v9, v23

    :goto_105
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v4

    if-gt v3, v6, :cond_251

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_24f

    move-object/from16 v0, v24

    iget v6, v0, Lcv;->J:I

    move-object/from16 v0, v24

    iget v3, v0, Lcv;->B:I

    move-object/from16 v0, v24

    iget v9, v0, Lcv;->C:I

    move-object/from16 v0, v24

    iget v10, v0, Lcv;->a:I

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    add-int v19, v4, v2

    const/16 v2, 0xa

    filled-new-array {v8, v2}, [I

    move-result-object v2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, [[I

    const/4 v2, 0x0

    move v13, v2

    move v4, v3

    move v2, v6

    :goto_145
    add-int/lit8 v3, v2, 0x11

    const/4 v6, 0x1

    move-object/from16 v0, v24

    iget-object v7, v0, Lcv;->Z:Lbg;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v7, v3}, Lbg;->Z(I)I

    move-result v3

    move v14, v5

    move v5, v3

    :goto_154
    if-lez v5, :cond_175

    move-object/from16 v0, v24

    iget-object v3, v0, Lcv;->Z:Lbg;

    add-int/lit8 v7, v14, 0x1

    invoke-virtual {v3, v14}, Lbg;->Z(I)I

    move-result v3

    const/16 v8, 0x72

    if-ne v3, v8, :cond_39b

    const/4 v3, 0x0

    :goto_165
    move-object/from16 v0, v24

    iget-object v6, v0, Lcv;->Z:Lbg;

    invoke-virtual {v6, v7}, Lbg;->I(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, -0x1

    move v14, v6

    move v6, v3

    goto :goto_154

    :cond_175
    move-object/from16 v0, v24

    iget-object v3, v0, Lcv;->Z:Lbg;

    invoke-virtual {v3, v14}, Lbg;->J(I)Ljava/lang/String;

    move-result-object v27

    const/16 v18, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move v7, v3

    move v3, v5

    :goto_183
    if-ge v7, v4, :cond_199

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v8, 0xa

    if-ne v5, v8, :cond_396

    add-int/lit8 v3, v18, 0x1

    add-int/lit8 v5, v7, 0x1

    :goto_193
    add-int/lit8 v7, v7, 0x1

    move/from16 v18, v3

    move v3, v5

    goto :goto_183

    :cond_199
    move-object/from16 v0, v24

    iget-object v5, v0, Lcv;->Z:Lbg;

    add-int/lit8 v7, v2, 0xf

    invoke-virtual {v5, v7}, Lbg;->I(I)I

    move-result v7

    invoke-static {v7}, Ldb;->C(I)I

    move-result v8

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Ldb;->Code(ILjava/lang/String;)I

    move-result v5

    move-object/from16 v0, v27

    invoke-static {v0, v4}, Ldb;->Code(Ljava/lang/String;I)I

    move-result v3

    if-ne v2, v15, :cond_1fb

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Ldb;->Code(ILjava/lang/String;)I

    move-result v7

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-static {v0, v1}, Ldb;->Code(Ljava/lang/String;I)I

    move-result v4

    sub-int/2addr v4, v3

    if-eqz v6, :cond_1ed

    :goto_1d0
    mul-int v6, v8, v18

    invoke-static/range {v2 .. v11}, Lcv;->Code(IIIIIIIIII)[I

    move-result-object v2

    aput-object v2, v12, v13

    :goto_1d8
    if-eqz v12, :cond_1e1

    .line 75
    move-object/from16 v0, p0

    iget-object v2, v0, Lcv;->Code:Ljava/util/Vector;

    invoke-virtual {v2, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 68
    :cond_1e1
    move-object/from16 v0, p0

    iget v2, v0, Lcv;->B:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcv;->B:I

    goto/16 :goto_ce

    .line 71
    :cond_1ed
    move-object/from16 v0, v24

    iget-object v6, v0, Lcv;->Z:Lbg;

    add-int/lit8 v14, v2, 0x6

    invoke-virtual {v6, v14}, Lbg;->I(I)I

    move-result v6

    sub-int v5, v6, v5

    sub-int/2addr v5, v7

    goto :goto_1d0

    :cond_1fb
    move-object/from16 v0, v24

    invoke-direct {v0, v14}, Lcv;->Z(I)I

    move-result v17

    move-object/from16 v0, v24

    iget-object v14, v0, Lcv;->Z:Lbg;

    add-int/lit8 v16, v17, 0x1

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lbg;->I(I)I

    move-result v14

    add-int v16, v9, v14

    move-object/from16 v0, v24

    iget-object v14, v0, Lcv;->Z:Lbg;

    add-int/lit8 v28, v17, 0x3

    move/from16 v0, v28

    invoke-virtual {v14, v0}, Lbg;->Code(I)I

    move-result v14

    add-int/2addr v14, v10

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v28

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Ldb;->Code(ILjava/lang/String;)I

    move-result v7

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, v27

    invoke-static {v0, v4}, Ldb;->Code(Ljava/lang/String;I)I

    move-result v4

    sub-int/2addr v4, v3

    if-eqz v6, :cond_24d

    :goto_239
    mul-int v6, v8, v18

    invoke-static/range {v2 .. v11}, Lcv;->Code(IIIIIIIIII)[I

    move-result-object v2

    aput-object v2, v12, v13

    const/4 v3, 0x0

    add-int/lit8 v2, v13, 0x1

    move v13, v2

    move v10, v14

    move/from16 v9, v16

    move v4, v3

    move/from16 v2, v17

    goto/16 :goto_145

    :cond_24d
    const/4 v5, 0x0

    goto :goto_239

    :cond_24f
    const/4 v12, 0x0

    goto :goto_1d8

    :cond_251
    const/4 v3, -0x1

    if-eq v9, v3, :cond_261

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_264

    :cond_261
    const/4 v12, 0x0

    goto/16 :goto_1d8

    :cond_264
    move-object/from16 v0, v24

    iget-object v3, v0, Lcv;->Z:Lbg;

    add-int/lit8 v6, v15, 0x6

    invoke-virtual {v3, v6}, Lbg;->I(I)I

    move-result v14

    move-object/from16 v0, v24

    iget-object v3, v0, Lcv;->Z:Lbg;

    add-int/lit8 v6, v15, 0x8

    invoke-virtual {v3, v6}, Lbg;->Code(I)I

    move-result v15

    move-object/from16 v0, v24

    iget-object v3, v0, Lcv;->Z:Lbg;

    add-int/lit8 v6, v9, 0x1

    invoke-virtual {v3, v6}, Lbg;->I(I)I

    move-result v3

    add-int v16, v12, v3

    move-object/from16 v0, v24

    iget-object v3, v0, Lcv;->Z:Lbg;

    add-int/lit8 v6, v9, 0x3

    invoke-virtual {v3, v6}, Lbg;->Code(I)I

    move-result v3

    add-int v17, v13, v3

    move-object/from16 v0, v24

    iget-object v3, v0, Lcv;->Z:Lbg;

    add-int/lit8 v6, v9, 0x6

    invoke-virtual {v3, v6}, Lbg;->I(I)I

    move-result v18

    move-object/from16 v0, v24

    iget-object v3, v0, Lcv;->Z:Lbg;

    add-int/lit8 v6, v9, 0x8

    invoke-virtual {v3, v6}, Lbg;->Code(I)I

    move-result v19

    add-int/lit8 v3, v9, 0x11

    move-object/from16 v0, v24

    iget-object v7, v0, Lcv;->Z:Lbg;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v7, v3}, Lbg;->Z(I)I

    move-result v3

    move v7, v6

    :goto_2b1
    if-lez v3, :cond_2c4

    add-int/lit8 v6, v7, 0x1

    move-object/from16 v0, v24

    iget-object v7, v0, Lcv;->Z:Lbg;

    invoke-virtual {v7, v6}, Lbg;->I(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    add-int/lit8 v3, v3, -0x1

    move v7, v6

    goto :goto_2b1

    :cond_2c4
    move-object/from16 v0, v24

    iget-object v3, v0, Lcv;->Z:Lbg;

    invoke-virtual {v3, v7}, Lbg;->J(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v20, :cond_2d2

    invoke-static {v6}, Ldb;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_2d2
    move-object/from16 v0, v24

    invoke-direct {v0, v7}, Lcv;->Z(I)I

    move-result v3

    invoke-static/range {v12 .. v19}, Lcw;->Code(IIIIIIII)Z

    move-result v7

    if-eqz v7, :cond_313

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v10, 0x20

    if-ne v7, v10, :cond_310

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v4

    add-int/lit8 v10, v10, 0x1

    if-le v7, v10, :cond_310

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move/from16 v13, v17

    move/from16 v12, v16

    move v15, v9

    move-object v2, v6

    move v9, v3

    goto/16 :goto_105

    :cond_310
    const/4 v12, 0x0

    goto/16 :goto_1d8

    :cond_313
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move/from16 v13, v17

    move/from16 v12, v16

    move v15, v9

    move-object v2, v6

    move v9, v3

    goto/16 :goto_105

    .line 42
    :cond_329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcv;->Z:Lbg;

    add-int/lit8 v3, v25, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcv;->Z:Lbg;

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Lbg;->I(I)I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, v26

    invoke-virtual {v2, v3, v0}, Lbg;->Code(I[I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcv;->J:I

    goto/16 :goto_48

    .line 80
    :cond_346
    move-object/from16 v0, p0

    iget-object v2, v0, Lcv;->Code:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v5

    :cond_34e
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_395

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, [[I

    const/4 v2, 0x0

    move v4, v2

    :goto_35d
    array-length v2, v3

    if-ge v4, v2, :cond_34e

    aget-object v6, v3, v4

    new-instance v2, Ljava/lang/Integer;

    const/4 v7, 0x0

    aget v7, v6, v7

    invoke-direct {v2, v7}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcv;->I:Ljava/util/Hashtable;

    invoke-virtual {v7, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_385

    move-object/from16 v0, p0

    iget-object v7, v0, Lcv;->I:Ljava/util/Hashtable;

    invoke-virtual {v7, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Vector;

    invoke-virtual {v2, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_381
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_35d

    :cond_385
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v7, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcv;->I:Ljava/util/Hashtable;

    invoke-virtual {v6, v2, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_381

    .line 81
    :cond_395
    return-void

    :cond_396
    move v5, v3

    move/from16 v3, v18

    goto/16 :goto_193

    :cond_39b
    move v3, v6

    goto/16 :goto_165

    :cond_39e
    move-object/from16 v22, v2

    goto/16 :goto_c1

    :cond_3a2
    move/from16 v2, v21

    goto/16 :goto_95

    :cond_3a6
    move/from16 v20, v3

    goto/16 :goto_1d
.end method

.method final Code()Z
    .registers 2

    .prologue
    .line 321
    iget-object v0, p0, Lcv;->Code:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method final Code(I)[[I
    .registers 3

    .prologue
    .line 331
    iget-object v0, p0, Lcv;->Code:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    return-object v0
.end method

.method final I()I
    .registers 2

    .prologue
    .line 326
    iget-object v0, p0, Lcv;->Code:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method final I(I)Ljava/util/Vector;
    .registers 4

    .prologue
    .line 336
    iget-object v0, p0, Lcv;->I:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    return-object v0
.end method
