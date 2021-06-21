.class abstract Lce;
.super Ljava/lang/Thread;
.source "Source"


# instance fields
.field protected Code:Ljava/lang/String;

.field protected I:Z

.field private Z:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 19
    iput-object p1, p0, Lce;->Code:Ljava/lang/String;

    .line 20
    invoke-static {p2}, Lar;->J(I)I

    move-result v0

    iput v0, p0, Lce;->Z:I

    .line 21
    invoke-static {p0}, Lar;->Code(Lce;)V

    .line 22
    return-void
.end method

.method protected static I(I)Ljava/lang/String;
    .registers 7

    .prologue
    .line 139
    if-nez p0, :cond_4

    .line 141
    const/4 v0, 0x0

    .line 156
    :goto_3
    return-object v0

    .line 143
    :cond_4
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 144
    sget-object v0, Lar;->Z:Lan;

    invoke-virtual {v0, p0}, Lan;->n(I)I

    move-result v2

    .line 145
    sget-object v0, Lar;->Z:Lan;

    invoke-virtual {v0, p0, v2}, Lan;->Code(II)V

    .line 146
    const/4 v0, 0x0

    :goto_15
    div-int/lit8 v3, v2, 0x2

    if-ge v0, v3, :cond_58

    .line 148
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-eqz v3, :cond_24

    .line 150
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 152
    :cond_24
    sget-object v3, Lar;->Z:Lan;

    sget-object v4, Lar;->Z:Lan;

    iget-object v4, v4, Lan;->I:[I

    sget-object v5, Lar;->Z:Lan;

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x0

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Lan;->f(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 154
    sget-object v3, Lar;->Z:Lan;

    sget-object v4, Lar;->Z:Lan;

    iget-object v4, v4, Lan;->I:[I

    sget-object v5, Lar;->Z:Lan;

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x0

    add-int/lit8 v5, v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Lan;->f(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 156
    :cond_58
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method


# virtual methods
.method protected Code(Ljava/lang/Exception;)I
    .registers 3

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public Code()V
    .registers 2

    .prologue
    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lce;->I:Z

    .line 32
    return-void
.end method

.method protected final Code(I)V
    .registers 4

    .prologue
    .line 59
    iget v0, p0, Lce;->Z:I

    if-eqz v0, :cond_f

    .line 61
    sget-object v0, Lar;->I:Lar;

    iget v1, p0, Lce;->Z:I

    invoke-static {v1}, Lar;->B(I)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lar;->I(II)V

    .line 63
    :cond_f
    return-void
.end method

.method protected Code(ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 123
    sget-object v0, Lar;->Code:Lci;

    invoke-interface {v0}, Lci;->p()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 135
    :goto_8
    return-void

    .line 126
    :cond_9
    sget-object v0, Lar;->I:Lar;

    invoke-virtual {v0}, Lar;->h()V

    .line 127
    iget-boolean v0, p0, Lce;->I:Z

    if-eqz v0, :cond_18

    .line 129
    sget-object v0, Lar;->I:Lar;

    invoke-virtual {v0}, Lar;->i()V

    goto :goto_8

    .line 132
    :cond_18
    sget-object v0, Lar;->Z:Lan;

    sget-object v1, Lar;->Z:Lan;

    if-eqz p2, :cond_30

    :goto_1e
    invoke-virtual {v1, p2}, Lan;->Code(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lan;->b(I)V

    .line 133
    sget-object v0, Lar;->Z:Lan;

    invoke-virtual {v0, p1}, Lan;->c(I)V

    .line 134
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Lce;->Code(I)V

    goto :goto_8

    .line 132
    :cond_30
    const-string p2, "Unspecified error"

    goto :goto_1e
.end method

.method protected Code(Ljava/io/DataInputStream;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 69
    const/16 v0, 0x800

    new-array v1, v0, [B

    .line 72
    :goto_5
    iget-boolean v0, p0, Lce;->I:Z

    if-nez v0, :cond_1b

    .line 76
    :try_start_9
    invoke-virtual {p1, v1}, Ljava/io/DataInputStream;->read([B)I
    :try_end_c
    .catch Ljava/io/EOFException; {:try_start_9 .. :try_end_c} :catch_1c

    move-result v0

    .line 82
    :goto_d
    sget-object v2, Lar;->I:Lar;

    invoke-virtual {v2}, Lar;->h()V

    .line 83
    iget-boolean v2, p0, Lce;->I:Z

    if-eqz v2, :cond_1f

    .line 85
    sget-object v0, Lar;->I:Lar;

    invoke-virtual {v0}, Lar;->i()V

    .line 98
    :cond_1b
    :goto_1b
    return-void

    .line 80
    :catch_1c
    move-exception v0

    const/4 v0, -0x1

    goto :goto_d

    .line 88
    :cond_1f
    if-gtz v0, :cond_27

    .line 90
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Lce;->Code(I)V

    goto :goto_1b

    .line 93
    :cond_27
    sget-object v2, Lar;->Z:Lan;

    sget-object v3, Lar;->Z:Lan;

    invoke-virtual {v3, v1, v4, v0}, Lan;->I([BII)I

    move-result v3

    invoke-virtual {v2, v3}, Lan;->b(I)V

    .line 94
    sget-object v2, Lar;->Z:Lan;

    invoke-virtual {v2, v4}, Lan;->c(I)V

    .line 95
    sget-object v2, Lar;->Z:Lan;

    invoke-virtual {v2, v0}, Lan;->c(I)V

    .line 96
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Lce;->Code(I)V

    goto :goto_5
.end method

.method protected I(Ljava/lang/Exception;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 107
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_7

    .line 112
    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method protected abstract I()V
.end method

.method public run()V
    .registers 3

    .prologue
    .line 44
    :try_start_0
    invoke-virtual {p0}, Lce;->I()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_c

    .line 54
    :cond_3
    :goto_3
    iget v0, p0, Lce;->Z:I

    invoke-static {v0}, Lar;->C(I)I

    invoke-static {p0}, Lar;->I(Lce;)V

    .line 55
    return-void

    .line 46
    :catch_c
    move-exception v0

    .line 48
    iget-boolean v1, p0, Lce;->I:Z

    if-nez v1, :cond_3

    .line 51
    invoke-virtual {p0, v0}, Lce;->Code(Ljava/lang/Exception;)I

    move-result v1

    invoke-virtual {p0, v0}, Lce;->I(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lce;->Code(ILjava/lang/String;)V

    goto :goto_3
.end method
