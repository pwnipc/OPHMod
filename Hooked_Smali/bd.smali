.class final Lbd;
.super Ljava/lang/Object;
.source "Source"


# instance fields
.field private final B:Ljava/lang/String;

.field private final C:Ljava/lang/String;

.field private final Code:Lbg;

.field private final I:I

.field private final J:Ljava/lang/String;

.field private final Z:I

.field private final a:I


# direct methods
.method constructor <init>(Lbg;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lbd;->Code:Lbg;

    .line 20
    iput p2, p0, Lbd;->I:I

    .line 21
    iput p3, p0, Lbd;->Z:I

    .line 22
    iput-object p4, p0, Lbd;->J:Ljava/lang/String;

    .line 23
    iput-object p5, p0, Lbd;->B:Ljava/lang/String;

    .line 24
    iput-object p6, p0, Lbd;->C:Ljava/lang/String;

    .line 25
    iput p7, p0, Lbd;->a:I

    .line 26
    return-void
.end method

.method static synthetic Code(Lbd;)Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0x2f

    .line 6
    iget-object v0, p0, Lbd;->B:Ljava/lang/String;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_11

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_11
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_1d

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_1d
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_59

    iget-object v1, p0, Lbd;->C:Ljava/lang/String;

    if-eqz v1, :cond_59

    iget-object v1, p0, Lbd;->C:Ljava/lang/String;

    const-string v2, "image/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_59

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbd;->C:Ljava/lang/String;

    iget-object v2, p0, Lbd;->C:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_59
    return-object v0
.end method

.method private static Code(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 159
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [C

    .line 161
    const/4 v0, 0x0

    :goto_7
    array-length v2, v1

    if-ge v0, v2, :cond_11

    .line 162
    const/16 v2, 0x2a

    aput-char v2, v1, v0

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 164
    :cond_11
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method static synthetic I(Lbd;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 6
    iget-object v0, p0, Lbd;->C:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic J(Lbd;)Lbg;
    .registers 2

    .prologue
    .line 6
    iget-object v0, p0, Lbd;->Code:Lbg;

    return-object v0
.end method

.method static synthetic Z(Lbd;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 6
    iget-object v0, p0, Lbd;->B:Ljava/lang/String;

    return-object v0
.end method

.method private f()I
    .registers 3

    .prologue
    .line 65
    iget v0, p0, Lbd;->a:I

    if-gtz v0, :cond_6

    .line 66
    const/4 v0, 0x0

    .line 68
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lbd;->Code:Lbg;

    iget v1, p0, Lbd;->a:I

    invoke-virtual {v0, v1}, Lbg;->l(I)I

    move-result v0

    goto :goto_5
.end method


# virtual methods
.method final B()Z
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lbd;->B:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method final C()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lbd;->B()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lbd;->B:Ljava/lang/String;

    :goto_8
    return-object v0

    :cond_9
    const-string v0, ""

    goto :goto_8
.end method

.method final Code()I
    .registers 2

    .prologue
    .line 30
    iget v0, p0, Lbd;->I:I

    return v0
.end method

.method final Code(I)V
    .registers 5

    .prologue
    .line 205
    packed-switch p1, :pswitch_data_78

    .line 218
    :cond_3
    :goto_3
    :pswitch_3
    return-void

    .line 208
    :pswitch_4
    invoke-virtual {p0}, Lbd;->B()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lbd$1;

    invoke-direct {v0, p0}, Lbd$1;-><init>(Lbd;)V

    invoke-static {v0}, Ldb;->Code(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 211
    :pswitch_13
    invoke-virtual {p0}, Lbd;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lbd;->Code:Lbg;

    iget v1, p0, Lbd;->a:I

    invoke-virtual {v0, v1}, Lbg;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lbd;->c()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-static {v0}, Lbd;->Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2b
    sget-object v1, Lar;->Code:Lci;

    invoke-interface {v1}, Lci;->w()Lbb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbb;->Code(Ljava/lang/String;)V

    goto :goto_3

    .line 214
    :pswitch_35
    invoke-virtual {p0}, Lbd;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lbd;->Code:Lbg;

    iget v1, p0, Lbd;->a:I

    invoke-virtual {v0, v1}, Lbg;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lbd;->c()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-static {v0}, Lbd;->Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4d
    sget-object v1, Lar;->Code:Lci;

    invoke-interface {v1}, Lci;->w()Lbb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbb;->Code(Ljava/lang/String;)V

    iget-object v0, p0, Lbd;->Code:Lbg;

    iget v1, p0, Lbd;->a:I

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lbg;->Code(ILjava/lang/String;)V

    goto :goto_3

    .line 217
    :pswitch_60
    invoke-virtual {p0}, Lbd;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lar;->Code:Lci;

    invoke-interface {v0}, Lci;->w()Lbb;

    move-result-object v0

    invoke-virtual {v0}, Lbb;->Code()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbd;->Code:Lbg;

    iget v2, p0, Lbd;->a:I

    invoke-virtual {v1, v2, v0}, Lbg;->Code(ILjava/lang/String;)V

    goto :goto_3

    .line 205
    :pswitch_data_78
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_13
        :pswitch_35
        :pswitch_60
    .end packed-switch
.end method

.method final I()I
    .registers 2

    .prologue
    .line 35
    iget v0, p0, Lbd;->Z:I

    return v0
.end method

.method final J()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lbd;->Z()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lbd;->J:Ljava/lang/String;

    :goto_8
    return-object v0

    :cond_9
    const-string v0, ""

    goto :goto_8
.end method

.method final Z()Z
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lbd;->J:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method final a()Z
    .registers 3

    .prologue
    .line 73
    invoke-direct {p0}, Lbd;->f()I

    move-result v0

    .line 75
    const/16 v1, 0x61

    if-eq v0, v1, :cond_18

    const/16 v1, 0x78

    if-eq v0, v1, :cond_18

    const/16 v1, 0x70

    if-eq v0, v1, :cond_18

    const/16 v1, 0x53

    if-eq v0, v1, :cond_18

    const/16 v1, 0x55

    if-ne v0, v1, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method final b()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0}, Lbd;->a()Z

    move-result v1

    if-nez v1, :cond_8

    .line 83
    :cond_7
    :goto_7
    return v0

    :cond_8
    iget-object v1, p0, Lbd;->Code:Lbg;

    iget v2, p0, Lbd;->a:I

    invoke-virtual {v1, v2}, Lbg;->o(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method final c()Z
    .registers 3

    .prologue
    .line 97
    invoke-direct {p0}, Lbd;->f()I

    move-result v0

    const/16 v1, 0x70

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method final d()Z
    .registers 3

    .prologue
    .line 102
    invoke-direct {p0}, Lbd;->f()I

    move-result v0

    const/16 v1, 0x66

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method final e()Z
    .registers 3

    .prologue
    .line 107
    invoke-direct {p0}, Lbd;->f()I

    move-result v0

    const/16 v1, 0x61

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
