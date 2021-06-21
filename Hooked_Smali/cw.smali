.class final Lcw;
.super Ljava/lang/Object;
.source "Source"


# instance fields
.field private B:Ljava/lang/String;

.field private C:[C

.field private final Code:Lbg;

.field private final I:I

.field private final J:I

.field private final Z:I

.field private a:Z


# direct methods
.method constructor <init>(Lbg;III)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcw;->B:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcw;->C:[C

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcw;->a:Z

    .line 29
    iput-object p1, p0, Lcw;->Code:Lbg;

    .line 30
    iput p2, p0, Lcw;->I:I

    .line 31
    iput p3, p0, Lcw;->Z:I

    .line 32
    iput p4, p0, Lcw;->J:I

    .line 33
    return-void
.end method

.method private B(Lcw;)Z
    .registers 4

    .prologue
    .line 174
    iget v0, p0, Lcw;->Z:I

    iget v1, p1, Lcw;->Z:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private C(Lcw;)Z
    .registers 4

    .prologue
    .line 179
    iget v0, p0, Lcw;->J:I

    iget v1, p1, Lcw;->J:I

    if-le v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method static Code(IIII)Z
    .registers 5

    .prologue
    .line 151
    add-int v0, p2, p3

    if-ge p0, v0, :cond_a

    add-int v0, p0, p1

    if-le v0, p2, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method static Code(IIIIIIII)Z
    .registers 11

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 157
    invoke-static {p1, p3, p5, p7}, Lcw;->Code(IIII)Z

    move-result v2

    if-nez v2, :cond_9

    .line 163
    :cond_8
    :goto_8
    return v0

    .line 160
    :cond_9
    if-ge p0, p4, :cond_11

    .line 161
    add-int v2, p0, p2

    if-ne v2, p4, :cond_8

    move v0, v1

    goto :goto_8

    .line 163
    :cond_11
    add-int v2, p4, p6

    if-ne p0, v2, :cond_8

    move v0, v1

    goto :goto_8
.end method

.method private a(Lcw;)Z
    .registers 4

    .prologue
    .line 184
    iget v0, p0, Lcw;->J:I

    iget v1, p1, Lcw;->J:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private b(Lcw;)Z
    .registers 4

    .prologue
    .line 189
    iget v0, p0, Lcw;->Z:I

    iget v1, p1, Lcw;->Z:I

    if-le v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private m()Lcw;
    .registers 3

    .prologue
    .line 225
    iget-object v0, p0, Lcw;->Code:Lbg;

    iget v1, p0, Lcw;->I:I

    invoke-virtual {v0, v1}, Lbg;->B(I)Lcw;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final B()I
    .registers 3

    .prologue
    .line 75
    iget-object v0, p0, Lcw;->Code:Lbg;

    iget v1, p0, Lcw;->I:I

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Lbg;->Code(I)I

    move-result v0

    return v0
.end method

.method final C()I
    .registers 3

    .prologue
    .line 85
    iget-object v0, p0, Lcw;->Code:Lbg;

    iget v1, p0, Lcw;->I:I

    add-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Lbg;->I(I)I

    move-result v0

    return v0
.end method

.method final Code()I
    .registers 2

    .prologue
    .line 52
    iget v0, p0, Lcw;->I:I

    return v0
.end method

.method final Code(Lcw;)I
    .registers 4

    .prologue
    .line 42
    iget v0, p0, Lcw;->I:I

    iget v1, p1, Lcw;->I:I

    sub-int/2addr v0, v1

    return v0
.end method

.method final Code(Z)I
    .registers 4

    .prologue
    .line 268
    invoke-virtual {p0}, Lcw;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, p1}, Lcw;->I(Z)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method final Code(II)Z
    .registers 11

    .prologue
    const/4 v2, 0x1

    .line 257
    iget v4, p0, Lcw;->Z:I

    iget v5, p0, Lcw;->J:I

    invoke-virtual {p0}, Lcw;->J()I

    move-result v6

    invoke-virtual {p0}, Lcw;->B()I

    move-result v7

    move v0, p1

    move v1, p2

    move v3, v2

    invoke-static/range {v0 .. v7}, Ldb;->Code(IIIIIIII)Z

    move-result v0

    return v0
.end method

.method final I()I
    .registers 2

    .prologue
    .line 57
    iget v0, p0, Lcw;->Z:I

    return v0
.end method

.method final I(Z)I
    .registers 3

    .prologue
    .line 273
    invoke-virtual {p0}, Lcw;->c()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 274
    if-eqz p1, :cond_a

    const/4 v0, 0x1

    .line 276
    :goto_9
    return v0

    .line 274
    :cond_a
    const/4 v0, 0x0

    goto :goto_9

    .line 276
    :cond_c
    if-eqz p1, :cond_19

    invoke-virtual {p0}, Lcw;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_19
    invoke-virtual {p0}, Lcw;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_9
.end method

.method final I(Lcw;)Z
    .registers 6

    .prologue
    .line 145
    iget v0, p0, Lcw;->J:I

    invoke-virtual {p0}, Lcw;->B()I

    move-result v1

    iget v2, p1, Lcw;->J:I

    invoke-virtual {p1}, Lcw;->B()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcw;->Code(IIII)Z

    move-result v0

    return v0
.end method

.method final J()I
    .registers 3

    .prologue
    .line 70
    iget-object v0, p0, Lcw;->Code:Lbg;

    iget v1, p0, Lcw;->I:I

    add-int/lit8 v1, v1, 0x6

    invoke-virtual {v0, v1}, Lbg;->I(I)I

    move-result v0

    return v0
.end method

.method final J(Lcw;)Z
    .registers 10

    .prologue
    .line 262
    iget v0, p0, Lcw;->Z:I

    iget v1, p0, Lcw;->J:I

    invoke-virtual {p0}, Lcw;->J()I

    move-result v2

    invoke-virtual {p0}, Lcw;->B()I

    move-result v3

    iget v4, p1, Lcw;->Z:I

    iget v5, p1, Lcw;->J:I

    invoke-virtual {p1}, Lcw;->J()I

    move-result v6

    invoke-virtual {p1}, Lcw;->B()I

    move-result v7

    invoke-static/range {v0 .. v7}, Ldb;->Code(IIIIIIII)Z

    move-result v0

    return v0
.end method

.method final Z()I
    .registers 2

    .prologue
    .line 65
    iget v0, p0, Lcw;->J:I

    return v0
.end method

.method final Z(Lcw;)Z
    .registers 10

    .prologue
    .line 168
    iget v0, p0, Lcw;->Z:I

    iget v1, p0, Lcw;->J:I

    invoke-virtual {p0}, Lcw;->J()I

    move-result v2

    invoke-virtual {p0}, Lcw;->B()I

    move-result v3

    iget v4, p1, Lcw;->Z:I

    iget v5, p1, Lcw;->J:I

    invoke-virtual {p1}, Lcw;->J()I

    move-result v6

    invoke-virtual {p1}, Lcw;->B()I

    move-result v7

    invoke-static/range {v0 .. v7}, Lcw;->Code(IIIIIIII)Z

    move-result v0

    return v0
.end method

.method final a()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 90
    iget-object v0, p0, Lcw;->B:Ljava/lang/String;

    if-nez v0, :cond_64

    .line 92
    iget v0, p0, Lcw;->I:I

    add-int/lit8 v0, v0, 0x11

    .line 93
    iget-object v2, p0, Lcw;->Code:Lbg;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v2, v0}, Lbg;->Z(I)I

    move-result v0

    move v5, v0

    move v0, v1

    move v1, v5

    :goto_14
    if-lez v1, :cond_33

    .line 95
    iget-object v2, p0, Lcw;->Code:Lbg;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v0}, Lbg;->Z(I)I

    move-result v0

    packed-switch v0, :pswitch_data_68

    .line 102
    iget-object v0, p0, Lcw;->Code:Lbg;

    invoke-virtual {v0, v3}, Lbg;->I(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v3

    .line 93
    :goto_2a
    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    .line 98
    :pswitch_2d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcw;->a:Z

    .line 99
    add-int/lit8 v0, v3, 0x2

    .line 100
    goto :goto_2a

    .line 106
    :cond_33
    iget-object v1, p0, Lcw;->Code:Lbg;

    invoke-virtual {v1, v0}, Lbg;->J(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcw;->B:Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcw;->B:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ldb;->Code(C)Z

    move-result v0

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcw;->B:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ldb;->J(C)Z

    move-result v0

    if-nez v0, :cond_64

    .line 109
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcw;->B:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcw;->B:Ljava/lang/String;

    .line 113
    :cond_64
    iget-object v0, p0, Lcw;->B:Ljava/lang/String;

    return-object v0

    .line 95
    nop

    :pswitch_data_68
    .packed-switch 0x72
        :pswitch_2d
    .end packed-switch
.end method

.method final b()[C
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcw;->C:[C

    if-nez v0, :cond_e

    .line 125
    invoke-virtual {p0}, Lcw;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcw;->C:[C

    .line 127
    :cond_e
    iget-object v0, p0, Lcw;->C:[C

    return-object v0
.end method

.method final c()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 133
    invoke-virtual {p0}, Lcw;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ldb;->Code(C)Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method final d()Z
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcw;->B:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 139
    invoke-virtual {p0}, Lcw;->a()Ljava/lang/String;

    .line 140
    :cond_7
    iget-boolean v0, p0, Lcw;->a:Z

    if-nez v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method final e()Lcw;
    .registers 5

    .prologue
    .line 195
    iget-object v0, p0, Lcw;->Code:Lbg;

    iget v1, p0, Lcw;->I:I

    iget v2, p0, Lcw;->Z:I

    iget v3, p0, Lcw;->J:I

    invoke-virtual {v0, v1, v2, v3}, Lbg;->Code(III)Lcw;

    move-result-object v0

    return-object v0
.end method

.method final f()Lcw;
    .registers 4

    .prologue
    .line 200
    iget v0, p0, Lcw;->J:I

    invoke-virtual {p0}, Lcw;->B()I

    move-result v1

    add-int/2addr v1, v0

    .line 202
    invoke-virtual {p0}, Lcw;->e()Lcw;

    move-result-object v0

    :goto_b
    if-eqz v0, :cond_17

    .line 203
    iget v2, v0, Lcw;->J:I

    if-lt v2, v1, :cond_12

    .line 206
    :goto_11
    return-object v0

    .line 202
    :cond_12
    invoke-virtual {v0}, Lcw;->e()Lcw;

    move-result-object v0

    goto :goto_b

    .line 206
    :cond_17
    const/4 v0, 0x0

    goto :goto_11
.end method

.method final g()Lcw;
    .registers 5

    .prologue
    .line 230
    iget v1, p0, Lcw;->J:I

    .line 231
    invoke-direct {p0}, Lcw;->m()Lcw;

    move-result-object v0

    :goto_6
    if-eqz v0, :cond_19

    .line 233
    iget v2, v0, Lcw;->J:I

    invoke-virtual {v0}, Lcw;->B()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    .line 234
    if-ge v2, v1, :cond_14

    .line 239
    :goto_13
    return-object v0

    .line 231
    :cond_14
    invoke-direct {v0}, Lcw;->m()Lcw;

    move-result-object v0

    goto :goto_6

    .line 239
    :cond_19
    const/4 v0, 0x0

    goto :goto_13
.end method

.method final h()Lcw;
    .registers 3

    .prologue
    .line 244
    invoke-direct {p0}, Lcw;->m()Lcw;

    move-result-object v0

    .line 245
    if-eqz v0, :cond_d

    .line 247
    invoke-virtual {p0, v0}, Lcw;->I(Lcw;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 249
    const/4 v0, 0x0

    .line 252
    :cond_d
    return-object v0
.end method

.method final i()Lcw;
    .registers 3

    .prologue
    .line 281
    invoke-virtual {p0}, Lcw;->e()Lcw;

    move-result-object v0

    .line 282
    if-eqz v0, :cond_19

    invoke-virtual {v0, p0}, Lcw;->I(Lcw;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-direct {v0, p0}, Lcw;->b(Lcw;)Z

    move-result v1

    if-nez v1, :cond_18

    :cond_12
    invoke-direct {v0, p0}, Lcw;->C(Lcw;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 294
    :cond_18
    :goto_18
    return-object v0

    .line 288
    :cond_19
    invoke-direct {p0}, Lcw;->m()Lcw;

    move-result-object v0

    .line 289
    if-eqz v0, :cond_31

    invoke-virtual {v0, p0}, Lcw;->I(Lcw;)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-direct {v0, p0}, Lcw;->b(Lcw;)Z

    move-result v1

    if-nez v1, :cond_18

    :cond_2b
    invoke-direct {v0, p0}, Lcw;->C(Lcw;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 294
    :cond_31
    const/4 v0, 0x0

    goto :goto_18
.end method

.method final j()Lcw;
    .registers 3

    .prologue
    .line 299
    invoke-virtual {p0}, Lcw;->e()Lcw;

    move-result-object v0

    .line 300
    if-eqz v0, :cond_19

    invoke-virtual {v0, p0}, Lcw;->I(Lcw;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-direct {v0, p0}, Lcw;->B(Lcw;)Z

    move-result v1

    if-nez v1, :cond_18

    :cond_12
    invoke-direct {v0, p0}, Lcw;->C(Lcw;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 312
    :cond_18
    :goto_18
    return-object v0

    .line 306
    :cond_19
    invoke-direct {p0}, Lcw;->m()Lcw;

    move-result-object v0

    .line 307
    if-eqz v0, :cond_31

    invoke-virtual {v0, p0}, Lcw;->I(Lcw;)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-direct {v0, p0}, Lcw;->B(Lcw;)Z

    move-result v1

    if-nez v1, :cond_18

    :cond_2b
    invoke-direct {v0, p0}, Lcw;->C(Lcw;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 312
    :cond_31
    const/4 v0, 0x0

    goto :goto_18
.end method

.method final k()Lcw;
    .registers 3

    .prologue
    .line 317
    invoke-virtual {p0}, Lcw;->e()Lcw;

    move-result-object v0

    .line 318
    if-eqz v0, :cond_19

    invoke-virtual {v0, p0}, Lcw;->I(Lcw;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-direct {v0, p0}, Lcw;->B(Lcw;)Z

    move-result v1

    if-nez v1, :cond_18

    :cond_12
    invoke-direct {v0, p0}, Lcw;->a(Lcw;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 330
    :cond_18
    :goto_18
    return-object v0

    .line 324
    :cond_19
    invoke-direct {p0}, Lcw;->m()Lcw;

    move-result-object v0

    .line 325
    if-eqz v0, :cond_31

    invoke-virtual {v0, p0}, Lcw;->I(Lcw;)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-direct {v0, p0}, Lcw;->B(Lcw;)Z

    move-result v1

    if-nez v1, :cond_18

    :cond_2b
    invoke-direct {v0, p0}, Lcw;->a(Lcw;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 330
    :cond_31
    const/4 v0, 0x0

    goto :goto_18
.end method

.method final l()Lcw;
    .registers 3

    .prologue
    .line 335
    invoke-virtual {p0}, Lcw;->e()Lcw;

    move-result-object v0

    .line 336
    if-eqz v0, :cond_19

    invoke-virtual {v0, p0}, Lcw;->I(Lcw;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-direct {v0, p0}, Lcw;->b(Lcw;)Z

    move-result v1

    if-nez v1, :cond_18

    :cond_12
    invoke-direct {v0, p0}, Lcw;->a(Lcw;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 348
    :cond_18
    :goto_18
    return-object v0

    .line 342
    :cond_19
    invoke-direct {p0}, Lcw;->m()Lcw;

    move-result-object v0

    .line 343
    if-eqz v0, :cond_31

    invoke-virtual {v0, p0}, Lcw;->I(Lcw;)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-direct {v0, p0}, Lcw;->b(Lcw;)Z

    move-result v1

    if-nez v1, :cond_18

    :cond_2b
    invoke-direct {v0, p0}, Lcw;->a(Lcw;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 348
    :cond_31
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "offset="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcw;->I:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcw;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x7

    if-ge v0, v2, :cond_31

    invoke-virtual {p0}, Lcw;->a()Ljava/lang/String;

    move-result-object v0

    :goto_22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcw;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u2026"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_22
.end method
