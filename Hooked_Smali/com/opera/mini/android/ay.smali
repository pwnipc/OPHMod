.class final Lcom/opera/mini/android/ay;
.super Ljava/lang/Object;
.source "Source"


# instance fields
.field private Code:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private Z:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/opera/mini/android/ay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/opera/mini/android/ay;->Code:Ljava/lang/String;

    .line 105
    iput-object p2, p0, Lcom/opera/mini/android/ay;->I:Ljava/lang/String;

    .line 106
    iput-object p3, p0, Lcom/opera/mini/android/ay;->Z:Ljava/lang/String;

    .line 107
    iput-object p4, p0, Lcom/opera/mini/android/ay;->J:Ljava/lang/String;

    .line 108
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 112
    instance-of v1, p1, Lcom/opera/mini/android/ay;

    if-nez v1, :cond_6

    .line 117
    :cond_5
    :goto_5
    return v0

    .line 116
    :cond_6
    check-cast p1, Lcom/opera/mini/android/ay;

    .line 117
    iget-object v1, p1, Lcom/opera/mini/android/ay;->Code:Ljava/lang/String;

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/opera/mini/android/ay;->Code:Ljava/lang/String;

    if-eqz v1, :cond_1a

    :cond_10
    iget-object v1, p1, Lcom/opera/mini/android/ay;->Code:Ljava/lang/String;

    iget-object v2, p0, Lcom/opera/mini/android/ay;->Code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_1a
    iget-object v1, p1, Lcom/opera/mini/android/ay;->I:Ljava/lang/String;

    if-nez v1, :cond_22

    iget-object v1, p0, Lcom/opera/mini/android/ay;->I:Ljava/lang/String;

    if-eqz v1, :cond_2c

    :cond_22
    iget-object v1, p1, Lcom/opera/mini/android/ay;->I:Ljava/lang/String;

    iget-object v2, p0, Lcom/opera/mini/android/ay;->I:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_2c
    iget-object v1, p1, Lcom/opera/mini/android/ay;->Z:Ljava/lang/String;

    if-nez v1, :cond_34

    iget-object v1, p0, Lcom/opera/mini/android/ay;->Z:Ljava/lang/String;

    if-eqz v1, :cond_3e

    :cond_34
    iget-object v1, p1, Lcom/opera/mini/android/ay;->Z:Ljava/lang/String;

    iget-object v2, p0, Lcom/opera/mini/android/ay;->Z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3e
    iget-object v1, p1, Lcom/opera/mini/android/ay;->J:Ljava/lang/String;

    if-nez v1, :cond_46

    iget-object v1, p0, Lcom/opera/mini/android/ay;->J:Ljava/lang/String;

    if-eqz v1, :cond_50

    :cond_46
    iget-object v1, p1, Lcom/opera/mini/android/ay;->J:Ljava/lang/String;

    iget-object v2, p0, Lcom/opera/mini/android/ay;->J:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_50
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public final hashCode()I
    .registers 3

    .prologue
    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/opera/mini/android/ay;->Code:Ljava/lang/String;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/opera/mini/android/ay;->Code:Ljava/lang/String;

    :goto_b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "jz78qgNXYe"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/opera/mini/android/ay;->I:Ljava/lang/String;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/opera/mini/android/ay;->I:Ljava/lang/String;

    :goto_1b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "jz78qgNXYe"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/opera/mini/android/ay;->Z:Ljava/lang/String;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/opera/mini/android/ay;->Z:Ljava/lang/String;

    :goto_2b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "jz78qgNXYe"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/opera/mini/android/ay;->J:Ljava/lang/String;

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/opera/mini/android/ay;->J:Ljava/lang/String;

    :goto_3b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    :cond_48
    const-string v0, ""

    goto :goto_b

    :cond_4b
    const-string v0, ""

    goto :goto_1b

    :cond_4e
    const-string v0, ""

    goto :goto_2b

    :cond_51
    const-string v0, ""

    goto :goto_3b
.end method
