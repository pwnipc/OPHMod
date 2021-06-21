.class abstract Lcom/opera/mini/android/bj;
.super Ljava/lang/Object;
.source "Source"


# instance fields
.field public final B:I

.field private C:I

.field public final Code:[Ljava/lang/String;

.field public final I:[I

.field public final J:Ljava/lang/String;

.field public Z:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/opera/mini/android/bj;->Code:[Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/opera/mini/android/bj;->Code:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_19

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 98
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalidly formatted test "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_2e
    iget-object v0, p0, Lcom/opera/mini/android/bj;->Code:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/opera/mini/android/bj;->J:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/opera/mini/android/bj;->Code:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/opera/mini/android/bj;->B:I

    .line 102
    iget-object v0, p0, Lcom/opera/mini/android/bj;->Code:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/opera/mini/android/bj;->C:I

    .line 103
    iget v0, p0, Lcom/opera/mini/android/bj;->C:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/opera/mini/android/bj;->I:[I

    .line 104
    return-void
.end method


# virtual methods
.method protected abstract Code()I
.end method

.method public final I()V
    .registers 4

    .prologue
    .line 120
    const/4 v0, 0x0

    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/opera/mini/android/bj;->I:[I

    array-length v1, v1

    if-ge v0, v1, :cond_18

    .line 121
    iget-object v1, p0, Lcom/opera/mini/android/bj;->I:[I

    invoke-virtual {p0}, Lcom/opera/mini/android/bj;->Code()I

    move-result v2

    aput v2, v1, v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_11

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 123
    :catch_11
    move-exception v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/opera/mini/android/bj;->Z:Ljava/lang/String;

    .line 126
    :cond_18
    return-void
.end method
