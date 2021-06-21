.class Lcf;
.super Lce;
.source "Source"


# instance fields
.field private B:Ljava/lang/String;

.field private C:Z

.field private J:Ljava/lang/String;

.field protected Z:Lct;

.field private a:I

.field private b:I

.field private c:I


# direct methods
.method constructor <init>(Ljava/lang/String;IILjava/lang/String;ZII)V
    .registers 17

    .prologue
    .line 32
    invoke-static {p3}, Lcf;->I(I)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcf;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZIII)V

    .line 34
    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZIII)V
    .registers 9

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lce;-><init>(Ljava/lang/String;I)V

    .line 21
    iput-object p3, p0, Lcf;->J:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcf;->B:Ljava/lang/String;

    .line 23
    iput-boolean p5, p0, Lcf;->C:Z

    .line 24
    iput p7, p0, Lcf;->a:I

    .line 25
    iput p6, p0, Lcf;->c:I

    .line 26
    iput p8, p0, Lcf;->b:I

    .line 27
    return-void
.end method


# virtual methods
.method protected final Code(Ljava/lang/Exception;)I
    .registers 3

    .prologue
    .line 99
    iget-object v0, p0, Lcf;->Z:Lct;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcf;->Z:Lct;

    invoke-virtual {v0}, Lct;->k()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcf;->Z:Lct;

    invoke-virtual {v0}, Lct;->m()I

    move-result v0

    :goto_12
    return v0

    :cond_13
    invoke-super {p0, p1}, Lce;->Code(Ljava/lang/Exception;)I

    move-result v0

    goto :goto_12
.end method

.method protected Code([Ljava/lang/Object;[I)V
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 65
    iget-object v0, p0, Lcf;->J:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcf;->J:Ljava/lang/String;

    .line 69
    :cond_9
    const/16 v0, 0x40

    iget-object v2, p0, Lcf;->J:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    aput-object v2, p1, v0

    .line 70
    const/16 v2, 0x41

    iget-boolean v0, p0, Lcf;->C:Z

    if-eqz v0, :cond_48

    move v0, v1

    :goto_1a
    aput v0, p2, v2

    .line 71
    const/16 v0, 0x1d

    iget-object v2, p0, Lcf;->B:Ljava/lang/String;

    if-eqz v2, :cond_23

    const/4 v1, 0x3

    :cond_23
    aput v1, p2, v0

    .line 72
    const/16 v0, 0x2a

    iget-object v1, p0, Lcf;->B:Ljava/lang/String;

    aput-object v1, p1, v0

    .line 73
    const/16 v0, 0x25

    iget v1, p0, Lcf;->a:I

    aput v1, p2, v0

    .line 74
    const/16 v0, 0x35

    iget-object v1, p0, Lcf;->Code:Ljava/lang/String;

    aput-object v1, p1, v0

    .line 75
    const/16 v0, 0x5d

    iget v1, p0, Lcf;->c:I

    aput v1, p2, v0

    .line 77
    const/16 v0, 0x61

    sget-object v1, Lar;->Code:Lci;

    invoke-interface {v1}, Lci;->am()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 79
    return-void

    .line 70
    :cond_48
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method protected final I(Ljava/lang/Exception;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 104
    iget-object v0, p0, Lcf;->Z:Lct;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcf;->Z:Lct;

    invoke-virtual {v0}, Lct;->k()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 106
    iget-object v0, p0, Lcf;->Z:Lct;

    invoke-virtual {v0}, Lct;->m()I

    move-result v0

    packed-switch v0, :pswitch_data_24

    .line 116
    :cond_15
    invoke-super {p0, p1}, Lce;->I(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    :goto_19
    return-object v0

    .line 109
    :pswitch_1a
    const-string v0, "Unknown error"

    goto :goto_19

    .line 111
    :pswitch_1d
    const-string v0, "Key expired"

    goto :goto_19

    .line 113
    :pswitch_20
    const-string v0, "Timeout"

    goto :goto_19

    .line 106
    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
    .end packed-switch
.end method

.method protected final I()V
    .registers 5

    .prologue
    const/16 v0, 0x7c

    .line 44
    new-array v1, v0, [Ljava/lang/Object;

    .line 45
    new-array v2, v0, [I

    .line 46
    invoke-virtual {p0, v1, v2}, Lcf;->Code([Ljava/lang/Object;[I)V

    .line 47
    iget v0, p0, Lcf;->b:I

    if-eqz v0, :cond_2a

    iget v0, p0, Lcf;->b:I

    :goto_f
    const/4 v3, 0x1

    invoke-static {v1, v2, v0, v3}, Lcs;->Code([Ljava/lang/Object;[IIZ)Lct;

    move-result-object v0

    iput-object v0, p0, Lcf;->Z:Lct;

    .line 52
    :try_start_16
    iget-boolean v0, p0, Lcf;->I:Z

    if-nez v0, :cond_24

    .line 54
    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, Lcf;->Z:Lct;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lcf;->I(Ljava/io/DataInputStream;)V
    :try_end_24
    .catchall {:try_start_16 .. :try_end_24} :catchall_32

    .line 59
    :cond_24
    iget-object v0, p0, Lcf;->Z:Lct;

    invoke-static {v0}, Ldb;->Code(Ljava/io/InputStream;)V

    .line 60
    return-void

    .line 47
    :cond_2a
    iget-object v0, p0, Lcf;->Code:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcz;->Code(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_f

    .line 59
    :catchall_32
    move-exception v0

    iget-object v1, p0, Lcf;->Z:Lct;

    invoke-static {v1}, Ldb;->Code(Ljava/io/InputStream;)V

    throw v0
.end method

.method protected I(Ljava/io/DataInputStream;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 83
    sget-object v0, Lar;->I:Lar;

    invoke-virtual {v0}, Lar;->h()V

    .line 84
    iget-boolean v0, p0, Lcf;->I:Z

    if-eqz v0, :cond_10

    .line 86
    sget-object v0, Lar;->I:Lar;

    invoke-virtual {v0}, Lar;->i()V

    .line 95
    :goto_f
    return-void

    .line 89
    :cond_10
    sget-object v0, Lar;->Z:Lan;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lan;->c(I)V

    .line 90
    sget-object v0, Lar;->Z:Lan;

    invoke-virtual {v0, v2}, Lan;->b(I)V

    .line 91
    sget-object v0, Lar;->Z:Lan;

    invoke-virtual {v0, v2}, Lan;->b(I)V

    .line 92
    const/16 v0, 0x2b

    invoke-virtual {p0, v0}, Lcf;->Code(I)V

    .line 94
    invoke-virtual {p0, p1}, Lcf;->Code(Ljava/io/DataInputStream;)V

    goto :goto_f
.end method

.method public run()V
    .registers 1

    .prologue
    .line 38
    invoke-static {}, Ldb;->B()V

    .line 39
    invoke-super {p0}, Lce;->run()V

    .line 40
    return-void
.end method
