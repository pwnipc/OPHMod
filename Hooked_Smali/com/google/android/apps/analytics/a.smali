.class final Lcom/google/android/apps/analytics/a;
.super Ljava/lang/Object;


# instance fields
.field final B:I

.field final C:I

.field final Code:Ljava/lang/String;

.field final I:Ljava/lang/String;

.field final J:Ljava/lang/String;

.field final Z:Ljava/lang/String;

.field final a:I

.field b:Lcom/google/android/apps/analytics/J;

.field private c:J

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Lcom/google/android/apps/analytics/u;

.field private n:Lcom/google/android/apps/analytics/k;


# direct methods
.method constructor <init>(JLjava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .registers 16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/apps/analytics/a;->c:J

    iput-object p3, p0, Lcom/google/android/apps/analytics/a;->Code:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/apps/analytics/a;->d:I

    iput p5, p0, Lcom/google/android/apps/analytics/a;->f:I

    iput p6, p0, Lcom/google/android/apps/analytics/a;->g:I

    iput p7, p0, Lcom/google/android/apps/analytics/a;->h:I

    iput p8, p0, Lcom/google/android/apps/analytics/a;->i:I

    iput-object p9, p0, Lcom/google/android/apps/analytics/a;->I:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/apps/analytics/a;->Z:Ljava/lang/String;

    iput-object p11, p0, Lcom/google/android/apps/analytics/a;->J:Ljava/lang/String;

    iput p12, p0, Lcom/google/android/apps/analytics/a;->B:I

    iput p14, p0, Lcom/google/android/apps/analytics/a;->a:I

    iput p13, p0, Lcom/google/android/apps/analytics/a;->C:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/analytics/a;->j:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/analytics/a;->l:Z

    return-void
.end method

.method constructor <init>(Lcom/google/android/apps/analytics/a;Ljava/lang/String;)V
    .registers 19

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/google/android/apps/analytics/a;->c:J

    move-object/from16 v0, p1

    iget v5, v0, Lcom/google/android/apps/analytics/a;->d:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/google/android/apps/analytics/a;->f:I

    move-object/from16 v0, p1

    iget v7, v0, Lcom/google/android/apps/analytics/a;->g:I

    move-object/from16 v0, p1

    iget v8, v0, Lcom/google/android/apps/analytics/a;->h:I

    move-object/from16 v0, p1

    iget v9, v0, Lcom/google/android/apps/analytics/a;->i:I

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/google/android/apps/analytics/a;->I:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/google/android/apps/analytics/a;->Z:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/google/android/apps/analytics/a;->J:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v13, v0, Lcom/google/android/apps/analytics/a;->B:I

    move-object/from16 v0, p1

    iget v14, v0, Lcom/google/android/apps/analytics/a;->C:I

    move-object/from16 v0, p1

    iget v15, v0, Lcom/google/android/apps/analytics/a;->a:I

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    invoke-direct/range {v1 .. v15}, Lcom/google/android/apps/analytics/a;-><init>(JLjava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    move-object/from16 v0, p1

    iget v1, v0, Lcom/google/android/apps/analytics/a;->e:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/android/apps/analytics/a;->e:I

    move-object/from16 v0, p1

    iget v1, v0, Lcom/google/android/apps/analytics/a;->j:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/android/apps/analytics/a;->j:I

    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/google/android/apps/analytics/a;->k:Z

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/apps/analytics/a;->k:Z

    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/google/android/apps/analytics/a;->l:Z

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/apps/analytics/a;->l:Z

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/apps/analytics/a;->b:Lcom/google/android/apps/analytics/J;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/analytics/a;->b:Lcom/google/android/apps/analytics/J;

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/apps/analytics/a;->m:Lcom/google/android/apps/analytics/u;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/analytics/a;->m:Lcom/google/android/apps/analytics/u;

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/apps/analytics/a;->n:Lcom/google/android/apps/analytics/k;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/analytics/a;->n:Lcom/google/android/apps/analytics/k;

    return-void
.end method


# virtual methods
.method final B()I
    .registers 2

    iget v0, p0, Lcom/google/android/apps/analytics/a;->h:I

    return v0
.end method

.method final B(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/apps/analytics/a;->i:I

    return-void
.end method

.method final C()I
    .registers 2

    iget v0, p0, Lcom/google/android/apps/analytics/a;->i:I

    return v0
.end method

.method final C(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/apps/analytics/a;->j:I

    return-void
.end method

.method final Code()I
    .registers 2

    iget v0, p0, Lcom/google/android/apps/analytics/a;->d:I

    return v0
.end method

.method final Code(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/apps/analytics/a;->d:I

    return-void
.end method

.method public final Code(Lcom/google/android/apps/analytics/k;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/apps/analytics/a;->I:Ljava/lang/String;

    const-string v1, "__##GOOGLEITEM##__"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempted to add an item to an event of type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/apps/analytics/a;->I:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    iput-object p1, p0, Lcom/google/android/apps/analytics/a;->n:Lcom/google/android/apps/analytics/k;

    return-void
.end method

.method public final Code(Lcom/google/android/apps/analytics/u;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/apps/analytics/a;->I:Ljava/lang/String;

    const-string v1, "__##GOOGLETRANSACTION##__"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempted to add a transction to an event of type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/apps/analytics/a;->I:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    iput-object p1, p0, Lcom/google/android/apps/analytics/a;->m:Lcom/google/android/apps/analytics/u;

    return-void
.end method

.method final I()I
    .registers 2

    iget v0, p0, Lcom/google/android/apps/analytics/a;->e:I

    return v0
.end method

.method final I(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/apps/analytics/a;->f:I

    return-void
.end method

.method final J()I
    .registers 2

    iget v0, p0, Lcom/google/android/apps/analytics/a;->g:I

    return v0
.end method

.method final J(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/apps/analytics/a;->h:I

    return-void
.end method

.method final Z()I
    .registers 2

    iget v0, p0, Lcom/google/android/apps/analytics/a;->f:I

    return v0
.end method

.method final Z(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/apps/analytics/a;->g:I

    return-void
.end method

.method final a()I
    .registers 2

    iget v0, p0, Lcom/google/android/apps/analytics/a;->j:I

    return v0
.end method

.method final b()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/analytics/a;->k:Z

    return-void
.end method

.method final c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/apps/analytics/a;->k:Z

    return v0
.end method

.method final d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/apps/analytics/a;->l:Z

    return v0
.end method

.method public final e()Lcom/google/android/apps/analytics/u;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/a;->m:Lcom/google/android/apps/analytics/u;

    return-object v0
.end method

.method public final f()Lcom/google/android/apps/analytics/k;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/a;->n:Lcom/google/android/apps/analytics/k;

    return-object v0
.end method

.method public final g()Z
    .registers 3

    iget v0, p0, Lcom/google/android/apps/analytics/a;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "id:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/google/android/apps/analytics/a;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " random:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/analytics/a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " timestampCurrent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/analytics/a;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " timestampPrevious:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/analytics/a;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " timestampFirst:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/analytics/a;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " visits:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/analytics/a;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/analytics/a;->B:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " category:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/analytics/a;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/analytics/a;->Z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " label:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/analytics/a;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/analytics/a;->C:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/analytics/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
