.class public final enum Lcom/opera/mini/android/events/EventDispatcher$Group;
.super Ljava/lang/Enum;
.source "Source"


# static fields
.field private static enum Code:Lcom/opera/mini/android/events/EventDispatcher$Group;

.field private static final synthetic I:[Lcom/opera/mini/android/events/EventDispatcher$Group;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 47
    new-instance v0, Lcom/opera/mini/android/events/EventDispatcher$Group;

    const-string v1, "Main"

    invoke-direct {v0, v1}, Lcom/opera/mini/android/events/EventDispatcher$Group;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/opera/mini/android/events/EventDispatcher$Group;->Code:Lcom/opera/mini/android/events/EventDispatcher$Group;

    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/opera/mini/android/events/EventDispatcher$Group;

    const/4 v1, 0x0

    sget-object v2, Lcom/opera/mini/android/events/EventDispatcher$Group;->Code:Lcom/opera/mini/android/events/EventDispatcher$Group;

    aput-object v2, v0, v1

    sput-object v0, Lcom/opera/mini/android/events/EventDispatcher$Group;->I:[Lcom/opera/mini/android/events/EventDispatcher$Group;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/opera/mini/android/events/EventDispatcher$Group;
    .registers 2

    .prologue
    .line 46
    const-class v0, Lcom/opera/mini/android/events/EventDispatcher$Group;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/opera/mini/android/events/EventDispatcher$Group;

    return-object v0
.end method

.method public static values()[Lcom/opera/mini/android/events/EventDispatcher$Group;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lcom/opera/mini/android/events/EventDispatcher$Group;->I:[Lcom/opera/mini/android/events/EventDispatcher$Group;

    invoke-virtual {v0}, [Lcom/opera/mini/android/events/EventDispatcher$Group;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/opera/mini/android/events/EventDispatcher$Group;

    return-object v0
.end method
