.class final Lcom/google/android/apps/analytics/Z;
.super Ljava/lang/Object;


# instance fields
.field private final Code:I

.field private final I:Ljava/lang/String;

.field private final J:I

.field private final Z:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-eq p4, v0, :cond_21

    const/4 v0, 0x2

    if-eq p4, v0, :cond_21

    const/4 v0, 0x3

    if-eq p4, v0, :cond_21

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid Scope:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    if-lez p1, :cond_26

    const/4 v0, 0x5

    if-le p1, v0, :cond_2e

    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Index must be between 1 and 5 inclusive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    if-eqz p2, :cond_36

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3e

    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid argument for name:  Cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3e
    if-eqz p3, :cond_46

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4e

    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid argument for value:  Cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lcom/google/android/apps/analytics/I;->Code(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_82

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Encoded form of name and value must not exceed 64 characters combined.  Character length: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_82
    iput p1, p0, Lcom/google/android/apps/analytics/Z;->J:I

    iput p4, p0, Lcom/google/android/apps/analytics/Z;->Code:I

    iput-object p2, p0, Lcom/google/android/apps/analytics/Z;->I:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/apps/analytics/Z;->Z:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final Code()I
    .registers 2

    iget v0, p0, Lcom/google/android/apps/analytics/Z;->Code:I

    return v0
.end method

.method public final I()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/Z;->I:Ljava/lang/String;

    return-object v0
.end method

.method public final J()I
    .registers 2

    iget v0, p0, Lcom/google/android/apps/analytics/Z;->J:I

    return v0
.end method

.method public final Z()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/Z;->Z:Ljava/lang/String;

    return-object v0
.end method
