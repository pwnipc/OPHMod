.class public final Lcom/google/analytics/tracking/android/q;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private final Code:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final I:Lcom/google/analytics/tracking/android/ao;

.field private J:Lcom/google/analytics/tracking/android/p;

.field private final Z:Lcom/google/analytics/tracking/android/am;


# direct methods
.method public constructor <init>(Lcom/google/analytics/tracking/android/ao;Lcom/google/analytics/tracking/android/am;Ljava/lang/Thread$UncaughtExceptionHandler;Landroid/content/Context;)V
    .registers 7

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-nez p1, :cond_d

    .line 50
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tracker cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_d
    if-nez p2, :cond_17

    .line 53
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "serviceManager cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_17
    iput-object p3, p0, Lcom/google/analytics/tracking/android/q;->Code:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 56
    iput-object p1, p0, Lcom/google/analytics/tracking/android/q;->I:Lcom/google/analytics/tracking/android/ao;

    .line 57
    iput-object p2, p0, Lcom/google/analytics/tracking/android/q;->Z:Lcom/google/analytics/tracking/android/am;

    .line 58
    new-instance v0, Lcom/google/analytics/tracking/android/p;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p4, v1}, Lcom/google/analytics/tracking/android/p;-><init>(Landroid/content/Context;Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/q;->J:Lcom/google/analytics/tracking/android/p;

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "ExceptionReporter created, original handler is "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p3, :cond_40

    const-string v0, "null"

    :goto_34
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/af;->J(Ljava/lang/String;)I

    .line 61
    return-void

    .line 59
    :cond_40
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_34
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 6

    .prologue
    .line 73
    const-string v0, "UncaughtException"

    .line 74
    iget-object v1, p0, Lcom/google/analytics/tracking/android/q;->J:Lcom/google/analytics/tracking/android/p;

    if-eqz v1, :cond_12

    .line 75
    if-eqz p1, :cond_3d

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    .line 76
    :goto_c
    iget-object v1, p0, Lcom/google/analytics/tracking/android/q;->J:Lcom/google/analytics/tracking/android/p;

    invoke-virtual {v1, v0, p2}, Lcom/google/analytics/tracking/android/p;->Code(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 78
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Tracking Exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/af;->J(Ljava/lang/String;)I

    .line 79
    iget-object v1, p0, Lcom/google/analytics/tracking/android/q;->I:Lcom/google/analytics/tracking/android/ao;

    invoke-virtual {v1, v0}, Lcom/google/analytics/tracking/android/ao;->J(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/google/analytics/tracking/android/q;->Z:Lcom/google/analytics/tracking/android/am;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/am;->Z()V

    .line 82
    iget-object v0, p0, Lcom/google/analytics/tracking/android/q;->Code:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_3c

    .line 83
    const-string v0, "Passing exception to original handler."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/af;->J(Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/google/analytics/tracking/android/q;->Code:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 86
    :cond_3c
    return-void

    .line 75
    :cond_3d
    const/4 v0, 0x0

    goto :goto_c
.end method
