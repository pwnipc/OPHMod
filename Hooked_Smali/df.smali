.class public final Ldf;
.super Ljava/lang/Object;
.source "Source"


# instance fields
.field private final B:Ldk;

.field private final C:Ljava/lang/ThreadLocal;

.field private final Code:Ljava/util/concurrent/ConcurrentMap;

.field private final I:Ljava/util/concurrent/ConcurrentMap;

.field private final J:Ldn;

.field private final Z:Ljava/lang/String;

.field private final a:Ljava/lang/ThreadLocal;

.field private final b:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 125
    const-string v0, "default"

    invoke-direct {p0, v0}, Ldf;-><init>(Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Ldn;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 153
    sget-object v0, Ldk;->Code:Ldk;

    invoke-direct {p0, p1, p2, v0}, Ldf;-><init>(Ldn;Ljava/lang/String;Ldk;)V

    .line 154
    return-void
.end method

.method private constructor <init>(Ldn;Ljava/lang/String;Ldk;)V
    .registers 5

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ldf;->Code:Ljava/util/concurrent/ConcurrentMap;

    .line 96
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ldf;->I:Ljava/util/concurrent/ConcurrentMap;

    .line 109
    new-instance v0, Ldf$1;

    invoke-direct {v0}, Ldf$1;-><init>()V

    iput-object v0, p0, Ldf;->C:Ljava/lang/ThreadLocal;

    .line 117
    new-instance v0, Ldf$2;

    invoke-direct {v0}, Ldf$2;-><init>()V

    iput-object v0, p0, Ldf;->a:Ljava/lang/ThreadLocal;

    .line 450
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldf;->b:Ljava/util/Map;

    .line 164
    iput-object p1, p0, Ldf;->J:Ldn;

    .line 165
    iput-object p2, p0, Ldf;->Z:Ljava/lang/String;

    .line 166
    iput-object p3, p0, Ldf;->B:Ldk;

    .line 167
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 134
    sget-object v0, Ldn;->Code:Ldn;

    invoke-direct {p0, v0, p1}, Ldf;-><init>(Ldn;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method private Code()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 342
    iget-object v0, p0, Ldf;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 360
    :goto_f
    return-void

    .line 346
    :cond_10
    iget-object v0, p0, Ldf;->a:Ljava/lang/ThreadLocal;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 349
    :cond_1a
    :goto_1a
    :try_start_1a
    iget-object v0, p0, Ldf;->C:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldg;

    .line 350
    if-eqz v0, :cond_45

    .line 351
    iget-object v1, v0, Ldg;->I:Ldi;

    invoke-virtual {v1}, Ldi;->Code()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 355
    iget-object v1, v0, Ldg;->Code:Ljava/lang/Object;

    iget-object v0, v0, Ldg;->I:Ldi;

    invoke-static {v1, v0}, Ldf;->Code(Ljava/lang/Object;Ldi;)V
    :try_end_39
    .catchall {:try_start_1a .. :try_end_39} :catchall_3a

    goto :goto_1a

    .line 359
    :catchall_3a
    move-exception v0

    iget-object v1, p0, Ldf;->a:Ljava/lang/ThreadLocal;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw v0

    :cond_45
    iget-object v0, p0, Ldf;->a:Ljava/lang/ThreadLocal;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_f
.end method

.method private static Code(Ldi;Ldj;)V
    .registers 6

    .prologue
    .line 239
    const/4 v0, 0x0

    .line 241
    :try_start_1
    invoke-virtual {p1}, Ldj;->I()Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_4} :catch_8

    move-result-object v0

    .line 245
    :goto_5
    if-nez v0, :cond_22

    .line 249
    :goto_7
    return-void

    .line 242
    :catch_8
    move-exception v1

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Producer "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " threw an exception."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Ldf;->Code(Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V

    goto :goto_5

    .line 248
    :cond_22
    invoke-static {v0, p0}, Ldf;->Code(Ljava/lang/Object;Ldi;)V

    goto :goto_7
.end method

.method private static Code(Ljava/lang/Object;Ldi;)V
    .registers 5

    .prologue
    .line 372
    :try_start_0
    invoke-virtual {p1, p0}, Ldi;->Code(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_3} :catch_4

    .line 377
    :goto_3
    return-void

    .line 373
    :catch_4
    move-exception v0

    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not dispatch event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to handler "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ldf;->Code(Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V

    goto :goto_3
.end method

.method private static Code(Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V
    .registers 4

    .prologue
    .line 442
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 443
    if-eqz v0, :cond_c

    .line 444
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 446
    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final Code(Ljava/lang/Object;)V
    .registers 8

    .prologue
    .line 185
    iget-object v0, p0, Ldf;->J:Ldn;

    invoke-interface {v0, p0}, Ldn;->Code(Ldf;)V

    .line 187
    iget-object v0, p0, Ldf;->B:Ldk;

    invoke-interface {v0, p1}, Ldk;->Code(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    .line 188
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 190
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldj;

    .line 191
    iget-object v2, p0, Ldf;->I:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldj;

    .line 193
    if-eqz v2, :cond_6a

    .line 194
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Producer method for type "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " found on type "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v1, Ldj;->Code:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", but already registered by type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Ldj;->Code:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 198
    :cond_6a
    iget-object v2, p0, Ldf;->Code:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 199
    if-eqz v0, :cond_13

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_13

    .line 200
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldi;

    .line 201
    invoke-static {v0, v1}, Ldf;->Code(Ldi;Ldj;)V

    goto :goto_7e

    .line 206
    :cond_8e
    iget-object v0, p0, Ldf;->B:Ldk;

    invoke-interface {v0, p1}, Ldk;->I(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    .line 207
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_cc

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 208
    iget-object v1, p0, Ldf;->Code:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 209
    if-nez v1, :cond_c2

    .line 211
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 212
    iget-object v1, p0, Ldf;->Code:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 213
    if-nez v1, :cond_c2

    move-object v1, v2

    .line 217
    :cond_c2
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 218
    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_9c

    .line 221
    :cond_cc
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 222
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 223
    iget-object v3, p0, Ldf;->I:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldj;

    .line 224
    if-eqz v1, :cond_d4

    invoke-virtual {v1}, Ldj;->Code()Z

    move-result v3

    if-eqz v3, :cond_d4

    .line 225
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 226
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_100
    :goto_100
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldi;

    .line 227
    invoke-virtual {v1}, Ldj;->Code()Z

    move-result v4

    if-eqz v4, :cond_d4

    .line 228
    invoke-virtual {v0}, Ldi;->Code()Z

    move-result v4

    if-eqz v4, :cond_100

    .line 231
    invoke-static {v0, v1}, Ldf;->Code(Ldi;Ldj;)V

    goto :goto_100

    .line 236
    :cond_11c
    return-void
.end method

.method public final I(Ljava/lang/Object;)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 304
    iget-object v0, p0, Ldf;->J:Ldn;

    invoke-interface {v0, p0}, Ldn;->Code(Ldf;)V

    .line 306
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v0, p0, Ldf;->b:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_40

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_21
    :goto_21
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3a

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_3a
    iget-object v0, p0, Ldf;->b:Ljava/util/Map;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 309
    :cond_40
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_45
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_87

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 310
    iget-object v2, p0, Ldf;->Code:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 312
    if-eqz v0, :cond_84

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_84

    .line 313
    const/4 v2, 0x1

    .line 314
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_66
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_99

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ldi;

    .line 315
    iget-object v0, p0, Ldf;->C:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v5, Ldg;

    invoke-direct {v5, p1, v1}, Ldg;-><init>(Ljava/lang/Object;Ldi;)V

    invoke-virtual {v0, v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_66

    :cond_84
    move v0, v1

    :goto_85
    move v1, v0

    .line 318
    goto :goto_45

    .line 320
    :cond_87
    if-nez v1, :cond_95

    instance-of v0, p1, Ldh;

    if-nez v0, :cond_95

    .line 321
    new-instance v0, Ldh;

    invoke-direct {v0}, Ldh;-><init>()V

    invoke-virtual {p0, v0}, Ldf;->I(Ljava/lang/Object;)V

    .line 324
    :cond_95
    invoke-direct {p0}, Ldf;->Code()V

    .line 325
    return-void

    :cond_99
    move v0, v2

    goto :goto_85
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Bus \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ldf;->Z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
