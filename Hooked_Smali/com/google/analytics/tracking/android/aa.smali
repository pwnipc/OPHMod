.class final Lcom/google/analytics/tracking/android/aa;
.super Ljava/lang/Object;
.source "Source"


# static fields
.field private static final J:Lcom/google/analytics/tracking/android/aa;


# instance fields
.field private Code:Ljava/util/SortedSet;

.field private I:Ljava/lang/StringBuilder;

.field private Z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 92
    new-instance v0, Lcom/google/analytics/tracking/android/aa;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/aa;-><init>()V

    sput-object v0, Lcom/google/analytics/tracking/android/aa;->J:Lcom/google/analytics/tracking/android/aa;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/aa;->Code:Ljava/util/SortedSet;

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/aa;->I:Ljava/lang/StringBuilder;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/aa;->Z:Z

    .line 103
    return-void
.end method

.method public static Code()Lcom/google/analytics/tracking/android/aa;
    .registers 1

    .prologue
    .line 95
    sget-object v0, Lcom/google/analytics/tracking/android/aa;->J:Lcom/google/analytics/tracking/android/aa;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized Code(Lcom/google/analytics/tracking/android/ab;)V
    .registers 5

    .prologue
    .line 110
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/aa;->Z:Z

    if-nez v0, :cond_19

    .line 111
    iget-object v0, p0, Lcom/google/analytics/tracking/android/aa;->Code:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v0, p0, Lcom/google/analytics/tracking/android/aa;->I:Ljava/lang/StringBuilder;

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-virtual {p1}, Lcom/google/analytics/tracking/android/ab;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 114
    :cond_19
    monitor-exit p0

    return-void

    .line 110
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized Code(Z)V
    .registers 3

    .prologue
    .line 106
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/google/analytics/tracking/android/aa;->Z:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 107
    monitor-exit p0

    return-void

    .line 106
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized I()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 123
    monitor-enter p0

    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    const/4 v1, 0x6

    move v2, v3

    .line 133
    :goto_9
    iget-object v0, p0, Lcom/google/analytics/tracking/android/aa;->Code:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v0

    if-lez v0, :cond_3c

    .line 137
    iget-object v0, p0, Lcom/google/analytics/tracking/android/aa;->Code:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/tracking/android/ab;

    .line 138
    iget-object v5, p0, Lcom/google/analytics/tracking/android/aa;->Code:Ljava/util/SortedSet;

    invoke-interface {v5, v0}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    .line 139
    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/ab;->ordinal()I

    move-result v5

    .line 147
    :goto_22
    if-lt v5, v1, :cond_31

    .line 148
    const-string v6, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 150
    add-int/lit8 v1, v1, 0x6

    move v2, v3

    goto :goto_22

    .line 152
    :cond_31
    const/4 v5, 0x1

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/ab;->ordinal()I

    move-result v0

    rem-int/lit8 v0, v0, 0x6

    shl-int v0, v5, v0

    add-int/2addr v2, v0

    .line 153
    goto :goto_9

    .line 158
    :cond_3c
    if-gtz v2, :cond_44

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_4d

    .line 159
    :cond_44
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    :cond_4d
    iget-object v0, p0, Lcom/google/analytics/tracking/android/aa;->Code:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    .line 165
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_55
    .catchall {:try_start_2 .. :try_end_55} :catchall_58

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 123
    :catchall_58
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized Z()Ljava/lang/String;
    .registers 4

    .prologue
    .line 176
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/aa;->I:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_11

    .line 177
    iget-object v0, p0, Lcom/google/analytics/tracking/android/aa;->I:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    :cond_11
    iget-object v0, p0, Lcom/google/analytics/tracking/android/aa;->I:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/tracking/android/aa;->I:Ljava/lang/StringBuilder;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 181
    monitor-exit p0

    return-object v0

    .line 176
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method
