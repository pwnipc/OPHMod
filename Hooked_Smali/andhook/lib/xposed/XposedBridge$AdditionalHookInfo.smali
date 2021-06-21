.class final Landhook/lib/xposed/XposedBridge$AdditionalHookInfo;
.super Ljava/lang/Object;
.source "XposedBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landhook/lib/xposed/XposedBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AdditionalHookInfo"
.end annotation


# instance fields
.field final callbacks:Landhook/lib/xposed/XposedBridge$CopyOnWriteSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landhook/lib/xposed/XposedBridge$CopyOnWriteSortedSet<",
            "Landhook/lib/xposed/XC_MethodHook;",
            ">;"
        }
    .end annotation
.end field

.field final method:Ljava/lang/reflect/Member;

.field final slot:I


# direct methods
.method private constructor <init>(Ljava/lang/reflect/Member;I)V
    .registers 4
    .param p1, "method"    # Ljava/lang/reflect/Member;
    .param p2, "slot"    # I

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    new-instance v0, Landhook/lib/xposed/XposedBridge$CopyOnWriteSortedSet;

    invoke-direct {v0}, Landhook/lib/xposed/XposedBridge$CopyOnWriteSortedSet;-><init>()V

    iput-object v0, p0, Landhook/lib/xposed/XposedBridge$AdditionalHookInfo;->callbacks:Landhook/lib/xposed/XposedBridge$CopyOnWriteSortedSet;

    .line 359
    iput-object p1, p0, Landhook/lib/xposed/XposedBridge$AdditionalHookInfo;->method:Ljava/lang/reflect/Member;

    .line 360
    iput p2, p0, Landhook/lib/xposed/XposedBridge$AdditionalHookInfo;->slot:I

    .line 361
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/reflect/Member;ILandhook/lib/xposed/XposedBridge$1;)V
    .registers 4
    .param p1, "x0"    # Ljava/lang/reflect/Member;
    .param p2, "x1"    # I
    .param p3, "x2"    # Landhook/lib/xposed/XposedBridge$1;

    .line 345
    invoke-direct {p0, p1, p2}, Landhook/lib/xposed/XposedBridge$AdditionalHookInfo;-><init>(Ljava/lang/reflect/Member;I)V

    return-void
.end method
