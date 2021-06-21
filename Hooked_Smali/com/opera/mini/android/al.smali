.class public Lcom/opera/mini/android/al;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static I:Lcom/opera/mini/android/al; = null

.field private static final J:Ljava/lang/String; = "LAST_CRASH_TIMESTAMP"


# instance fields
.field private Code:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private Z:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/opera/mini/android/al;->I:Lcom/opera/mini/android/al;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/opera/mini/android/al;->Z:J

    return-void
.end method

.method public static Code()V
    .registers 4

    .prologue
    .line 21
    sget-object v0, Lcom/opera/mini/android/Browser;->I:Lcom/opera/mini/android/Browser;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/opera/mini/android/Browser;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 22
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 23
    const-string v3, "LAST_CRASH_TIMESTAMP"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 24
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 26
    sget-object v0, Lcom/opera/mini/android/al;->I:Lcom/opera/mini/android/al;

    iput-wide v1, v0, Lcom/opera/mini/android/al;->Z:J

    .line 27
    return-void
.end method

.method public static I()V
    .registers 5

    .prologue
    .line 30
    sget-object v0, Lcom/opera/mini/android/al;->I:Lcom/opera/mini/android/al;

    if-nez v0, :cond_36

    .line 31
    new-instance v0, Lcom/opera/mini/android/al;

    invoke-direct {v0}, Lcom/opera/mini/android/al;-><init>()V

    .line 34
    sput-object v0, Lcom/opera/mini/android/al;->I:Lcom/opera/mini/android/al;

    invoke-static {}, Lcom/opera/mini/android/al;->J()V

    .line 37
    sget-object v0, Lcom/opera/mini/android/al;->I:Lcom/opera/mini/android/al;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    iput-object v1, v0, Lcom/opera/mini/android/al;->Code:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 38
    sget-object v0, Lcom/opera/mini/android/al;->I:Lcom/opera/mini/android/al;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 41
    sget-object v0, Lcom/opera/mini/android/Browser;->I:Lcom/opera/mini/android/Browser;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/opera/mini/android/Browser;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 43
    const-string v1, "LAST_CRASH_TIMESTAMP"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 44
    sget-object v1, Lcom/opera/mini/android/al;->I:Lcom/opera/mini/android/al;

    const-string v2, "LAST_CRASH_TIMESTAMP"

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/opera/mini/android/al;->Z:J

    .line 47
    :cond_36
    return-void
.end method

.method private static native J()V
.end method

.method public static Z()J
    .registers 2

    .prologue
    .line 52
    sget-object v0, Lcom/opera/mini/android/al;->I:Lcom/opera/mini/android/al;

    iget-wide v0, v0, Lcom/opera/mini/android/al;->Z:J

    return-wide v0
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 56
    invoke-static {}, Lcom/opera/mini/android/al;->Code()V

    .line 58
    iget-object v0, p0, Lcom/opera/mini/android/al;->Code:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_c

    .line 59
    iget-object v0, p0, Lcom/opera/mini/android/al;->Code:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 60
    :cond_c
    return-void
.end method
