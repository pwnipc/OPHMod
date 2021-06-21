.class final Ldi;
.super Ljava/lang/Object;
.source "Source"


# instance fields
.field private final Code:Ljava/lang/Object;

.field private final I:Ljava/lang/reflect/Method;

.field private J:Z

.field private final Z:I


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean v0, p0, Ldi;->J:Z

    .line 46
    if-nez p1, :cond_10

    .line 47
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "EventHandler target cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_10
    if-nez p2, :cond_1a

    .line 50
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "EventHandler method cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_1a
    iput-object p1, p0, Ldi;->Code:Ljava/lang/Object;

    .line 54
    iput-object p2, p0, Ldi;->I:Ljava/lang/reflect/Method;

    .line 55
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 59
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Ldi;->Z:I

    .line 61
    return-void
.end method


# virtual methods
.method public final Code(Ljava/lang/Object;)V
    .registers 6

    .prologue
    .line 85
    iget-boolean v0, p0, Ldi;->J:Z

    if-nez v0, :cond_21

    .line 86
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ldi;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has been invalidated and can no longer handle events."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_21
    :try_start_21
    iget-object v0, p0, Ldi;->I:Ljava/lang/reflect/Method;

    iget-object v1, p0, Ldi;->Code:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catch Ljava/lang/IllegalAccessException; {:try_start_21 .. :try_end_2e} :catch_2f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_21 .. :try_end_2e} :catch_36

    .line 97
    return-void

    .line 90
    :catch_2f
    move-exception v0

    .line 91
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 92
    :catch_36
    move-exception v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Error;

    if-eqz v1, :cond_46

    .line 94
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 96
    :cond_46
    throw v0
.end method

.method public final Code()Z
    .registers 2

    .prologue
    .line 64
    iget-boolean v0, p0, Ldi;->J:Z

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 109
    if-ne p0, p1, :cond_5

    .line 123
    :cond_4
    :goto_4
    return v0

    .line 113
    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    .line 114
    goto :goto_4

    .line 117
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    .line 118
    goto :goto_4

    .line 121
    :cond_15
    check-cast p1, Ldi;

    .line 123
    iget-object v2, p0, Ldi;->I:Ljava/lang/reflect/Method;

    iget-object v3, p1, Ldi;->I:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v2, p0, Ldi;->Code:Ljava/lang/Object;

    iget-object v3, p1, Ldi;->Code:Ljava/lang/Object;

    if-eq v2, v3, :cond_4

    :cond_27
    move v0, v1

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 105
    iget v0, p0, Ldi;->Z:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[EventHandler "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ldi;->I:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
