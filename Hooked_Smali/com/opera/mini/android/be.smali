.class public abstract Lcom/opera/mini/android/be;
.super Ljava/lang/Object;
.source "Source"


# static fields
.field private static B:Z

.field private static final C:[Ljava/lang/Integer;

.field private static I:Ljava/lang/reflect/Method;

.field private static J:Ljava/lang/reflect/Method;

.field private static Z:Ljava/lang/reflect/Method;


# instance fields
.field protected Code:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    .line 21
    new-array v0, v3, [Ljava/lang/Integer;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/opera/mini/android/be;->C:[Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Code(Landroid/content/Context;)Z
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 34
    :try_start_2
    const-string v0, "HTC Legend"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v1

    .line 55
    :goto_d
    return v0

    .line 39
    :cond_e
    const-string v0, "ZTE_GV821"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v2

    .line 41
    goto :goto_d

    .line 43
    :cond_1a
    const-class v0, Landroid/content/pm/PackageManager;

    const-string v3, "hasSystemFeature"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "android.hardware.touchscreen.multitouch"

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3f} :catch_44

    move-result v0

    if-nez v0, :cond_47

    move v0, v2

    .line 46
    goto :goto_d

    .line 52
    :catch_44
    move-exception v0

    move v0, v2

    goto :goto_d

    .line 55
    :cond_47
    invoke-static {p0}, Lcom/opera/mini/android/be;->I(Landroid/content/Context;)Lcom/opera/mini/android/be;

    move-result-object v0

    if-eqz v0, :cond_4f

    move v0, v1

    goto :goto_d

    :cond_4f
    move v0, v2

    goto :goto_d
.end method

.method public static I(Landroid/content/Context;)Lcom/opera/mini/android/be;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 65
    :try_start_1
    const-class v1, Landroid/view/MotionEvent;

    const-string v2, "getPointerCount"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 66
    sput-object v1, Lcom/opera/mini/android/be;->J:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_35

    .line 68
    const/4 v1, 0x1

    sput-boolean v1, Lcom/opera/mini/android/be;->B:Z

    .line 70
    const-class v1, Landroid/view/MotionEvent;

    const-string v2, "getX"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/opera/mini/android/be;->I:Ljava/lang/reflect/Method;

    .line 71
    const-class v1, Landroid/view/MotionEvent;

    const-string v2, "getY"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/opera/mini/android/be;->Z:Ljava/lang/reflect/Method;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_35} :catch_3c

    .line 84
    :cond_35
    :try_start_35
    invoke-static {p0}, Lcom/opera/mini/android/be;->Z(Landroid/content/Context;)Lcom/opera/mini/android/be;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_3a

    move-result-object v0

    .line 94
    :goto_39
    return-object v0

    :catch_3a
    move-exception v1

    goto :goto_39

    .line 77
    :catch_3c
    move-exception v1

    goto :goto_39
.end method

.method private static Z(Landroid/content/Context;)Lcom/opera/mini/android/be;
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 101
    const-string v0, "com.opera.mini.android.bo"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 103
    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p0, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/opera/mini/android/be;

    return-object v0
.end method


# virtual methods
.method protected Code(IIII)V
    .registers 7

    .prologue
    .line 108
    sget-object v0, Lar;->I:Lar;

    invoke-virtual {v0}, Lar;->h()V

    .line 109
    sget-object v0, Lar;->Z:Lan;

    invoke-virtual {v0, p2}, Lan;->c(I)V

    .line 110
    sget-object v0, Lar;->Z:Lan;

    invoke-virtual {v0, p3}, Lan;->c(I)V

    .line 111
    sget-object v0, Lar;->Z:Lan;

    invoke-virtual {v0, p4}, Lan;->c(I)V

    .line 112
    sget-object v0, Lar;->Z:Lan;

    iget v1, p0, Lcom/opera/mini/android/be;->Code:I

    invoke-virtual {v0, v1}, Lan;->c(I)V

    .line 114
    sget-object v0, Lar;->I:Lar;

    invoke-virtual {v0, p1}, Lar;->Z(I)V

    .line 115
    return-void
.end method

.method public abstract Code(Landroid/view/MotionEvent;)Z
.end method
