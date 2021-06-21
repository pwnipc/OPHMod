.class final Ldj;
.super Ljava/lang/Object;
.source "Source"


# instance fields
.field final Code:Ljava/lang/Object;

.field private final I:Ljava/lang/reflect/Method;

.field private J:Z

.field private final Z:I


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v0, p0, Ldj;->J:Z

    .line 42
    if-nez p1, :cond_10

    .line 43
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "EventProducer target cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_10
    if-nez p2, :cond_1a

    .line 46
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "EventProducer method cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_1a
    iput-object p1, p0, Ldj;->Code:Ljava/lang/Object;

    .line 50
    iput-object p2, p0, Ldj;->I:Ljava/lang/reflect/Method;

    .line 51
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 55
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Ldj;->Z:I

    .line 57
    return-void
.end method


# virtual methods
.method public final Code()Z
    .registers 2

    .prologue
    .line 60
    iget-boolean v0, p0, Ldj;->J:Z

    return v0
.end method

.method public final I()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 80
    iget-boolean v0, p0, Ldj;->J:Z

    if-nez v0, :cond_21

    .line 81
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ldj;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has been invalidated and can no longer produce events."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_21
    :try_start_21
    iget-object v0, p0, Ldj;->I:Ljava/lang/reflect/Method;

    iget-object v1, p0, Ldj;->Code:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catch Ljava/lang/IllegalAccessException; {:try_start_21 .. :try_end_2b} :catch_2d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_21 .. :try_end_2b} :catch_34

    move-result-object v0

    return-object v0

    .line 85
    :catch_2d
    move-exception v0

    .line 86
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 87
    :catch_34
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Error;

    if-eqz v1, :cond_44

    .line 89
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 91
    :cond_44
    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 104
    if-ne p0, p1, :cond_5

    .line 118
    :cond_4
    :goto_4
    return v0

    .line 108
    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    .line 109
    goto :goto_4

    .line 112
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    .line 113
    goto :goto_4

    .line 116
    :cond_15
    check-cast p1, Ldj;

    .line 118
    iget-object v2, p0, Ldj;->I:Ljava/lang/reflect/Method;

    iget-object v3, p1, Ldj;->I:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v2, p0, Ldj;->Code:Ljava/lang/Object;

    iget-object v3, p1, Ldj;->Code:Ljava/lang/Object;

    if-eq v2, v3, :cond_4

    :cond_27
    move v0, v1

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 100
    iget v0, p0, Ldj;->Z:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[EventProducer "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ldj;->I:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
