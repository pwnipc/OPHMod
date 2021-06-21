.class public Lcom/opera/mini/android/events/EventDispatcher;
.super Ljava/lang/Object;
.source "Source"


# static fields
.field private static B:Landroid/os/Handler;

.field private static final J:Lcom/opera/mini/android/events/EventDispatcher;


# instance fields
.field private final Code:Ldf;

.field private final I:Ljava/util/List;

.field private Z:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 55
    new-instance v0, Lcom/opera/mini/android/events/EventDispatcher;

    invoke-direct {v0}, Lcom/opera/mini/android/events/EventDispatcher;-><init>()V

    sput-object v0, Lcom/opera/mini/android/events/EventDispatcher;->J:Lcom/opera/mini/android/events/EventDispatcher;

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/opera/mini/android/events/EventDispatcher;->B:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/opera/mini/android/events/EventDispatcher$Group;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 53
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/opera/mini/android/events/EventDispatcher;->I:Ljava/util/List;

    .line 59
    new-instance v0, Ldf;

    sget-object v1, Ldn;->Code:Ldn;

    const-string v2, "main-bus"

    invoke-direct {v0, v1, v2}, Ldf;-><init>(Ldn;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/opera/mini/android/events/EventDispatcher;->Code:Ldf;

    .line 60
    return-void
.end method

.method public static Code(Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 84
    sget-object v1, Lcom/opera/mini/android/events/EventDispatcher;->J:Lcom/opera/mini/android/events/EventDispatcher;

    iget v0, v1, Lcom/opera/mini/android/events/EventDispatcher;->Z:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/opera/mini/android/events/EventDispatcher;->Z:I

    instance-of v0, p0, Lcom/opera/mini/android/events/EventDispatcher$DisposableEvent;

    if-eqz v0, :cond_14

    iget-object v2, v1, Lcom/opera/mini/android/events/EventDispatcher;->I:Ljava/util/List;

    move-object v0, p0

    check-cast v0, Lcom/opera/mini/android/events/EventDispatcher$DisposableEvent;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    iget-object v0, v1, Lcom/opera/mini/android/events/EventDispatcher;->Code:Ldf;

    invoke-virtual {v0, p0}, Ldf;->I(Ljava/lang/Object;)V

    iget v0, v1, Lcom/opera/mini/android/events/EventDispatcher;->Z:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v1, Lcom/opera/mini/android/events/EventDispatcher;->Z:I

    if-nez v0, :cond_3c

    iget-object v0, v1, Lcom/opera/mini/android/events/EventDispatcher;->I:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/opera/mini/android/events/EventDispatcher$DisposableEvent;

    invoke-interface {v0}, Lcom/opera/mini/android/events/EventDispatcher$DisposableEvent;->Code()V

    goto :goto_27

    :cond_37
    iget-object v0, v1, Lcom/opera/mini/android/events/EventDispatcher;->I:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 85
    :cond_3c
    return-void
.end method

.method public static I(Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 92
    sget-object v0, Lcom/opera/mini/android/events/EventDispatcher;->B:Landroid/os/Handler;

    new-instance v1, Lcom/opera/mini/android/events/EventDispatcher$1;

    invoke-direct {v1, p0}, Lcom/opera/mini/android/events/EventDispatcher$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 98
    return-void
.end method

.method public static Z(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 123
    sget-object v0, Lcom/opera/mini/android/events/EventDispatcher;->J:Lcom/opera/mini/android/events/EventDispatcher;

    iget-object v0, v0, Lcom/opera/mini/android/events/EventDispatcher;->Code:Ldf;

    invoke-virtual {v0, p0}, Ldf;->Code(Ljava/lang/Object;)V

    .line 124
    return-void
.end method
